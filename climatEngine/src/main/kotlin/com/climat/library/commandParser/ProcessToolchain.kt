package com.climat.library.commandParser

import com.climat.library.commandParser.exception.ParameterException
import com.climat.library.domain.action.ActionValueBase
import com.climat.library.domain.action.CustomScriptActionValue
import com.climat.library.domain.action.NoopActionValue
import com.climat.library.domain.action.ScopeParamsActionValue
import com.climat.library.domain.action.TemplateActionValue
import com.climat.library.domain.isLeaf
import com.climat.library.domain.ref.RefWithAnyValue
import com.climat.library.domain.toolchain.RootToolchain
import com.climat.library.domain.toolchain.Toolchain
import com.climat.library.utils.newLine

internal fun processRootToolchain(
    toolchain: RootToolchain,
    passedParams: MutableList<String>,
    handler: (parsedAction: ActionValueBase<*>, context: Toolchain) -> Unit
) = processToolchainDescendants(
    children = listOf(toolchain),
    passedParams = passedParams,
    upperScopeRefs = emptyMap(),
    upperPathToRoot = emptyList(),
    handler = handler
)

private fun processToolchainDescendants(
    children: List<Toolchain>,
    passedParams: MutableList<String>,
    upperScopeRefs: Map<String, RefWithAnyValue>,
    upperPathToRoot: List<Toolchain>,
    handler: (parsedAction: ActionValueBase<*>, context: Toolchain) -> Unit,
) {
    require(passedParams.any()) {
        "`params` must have at least one element"
    }

    val next = passedParams.removeFirst()
    val toolchain = children.find {
        it.name != "_" && (it.name == next || it.aliases.any { it.name == next })
    } ?: children.find { it.name == "_" }
        ?: throw Exception("Toolchain $next is not defined" + newLine() + getSubcommandUsageHint(upperPathToRoot))
    processToolchain(
        passedParams = passedParams,
        toolchain = toolchain,
        upperScopeRefs = upperScopeRefs,
        upperPathToRoot = upperPathToRoot,
        handler = handler,
    )
}

private fun processToolchain(
    passedParams: MutableList<String>,
    toolchain: Toolchain,
    upperScopeRefs: Map<String, RefWithAnyValue>,
    upperPathToRoot: List<Toolchain>,
    handler: (parsedAction: ActionValueBase<*>, context: Toolchain) -> Unit
) {
    val pathToRoot = upperPathToRoot + toolchain
    val scopeRefs = upperScopeRefs + processRefs(toolchain, passedParams, pathToRoot)
    if (passedParams.isEmpty()) {
        val act = toolchain.action
        if (act.type != ActionValueBase.Type.Noop) {
            setActualCommand(act, scopeRefs.values)
            handler(act, toolchain)
        }
    } else if (toolchain.isLeaf) {
        throw Exception("Could not match $passedParams with any definition") // TODO: proper error
    } else {
        processToolchainDescendants(
            children = toolchain.children.toList(),
            passedParams = passedParams,
            upperScopeRefs = scopeRefs,
            upperPathToRoot = pathToRoot,
            handler = handler
        )
    }
}

private fun processRefs(
    toolchain: Toolchain,
    passedParams: MutableList<String>,
    pathToRoot: List<Toolchain>
): Map<String, RefWithAnyValue> = try {
    processRefs(toolchain, passedParams)
} catch (ex: ParameterException) {
    throw Exception(
        ex.message + newLine() + getParameterUsageHint(pathToRoot),
        ex
    )
}

private fun setActualCommand(
    action: ActionValueBase<*>,
    values: Collection<RefWithAnyValue>
) {
    when (action) {
        is TemplateActionValue -> {
            action.value = action.template.str(values)
        }

        is CustomScriptActionValue -> {
            action.value = values.associate { it.ref.name to it.value }
        }

        is ScopeParamsActionValue -> {
            action.value = values.associate { it.ref.name to it.value }
        }

        is NoopActionValue -> {
            // By definition, do nothing
        }

        else -> throw Exception("Type `${action::class}` not supported")
    }
}
