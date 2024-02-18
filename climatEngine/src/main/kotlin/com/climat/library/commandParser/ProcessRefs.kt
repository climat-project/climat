package com.climat.library.commandParser

import com.climat.library.commandParser.exception.ParameterException
import com.climat.library.commandParser.exception.ParameterNotDefinedException
import com.climat.library.domain.ref.ArgDefinition
import com.climat.library.domain.ref.FlagDefinition
import com.climat.library.domain.ref.ParamDefinition
import com.climat.library.domain.ref.RefWithAnyValue
import com.climat.library.domain.ref.RefWithValue
import com.climat.library.domain.toolchain.Toolchain
import com.climat.library.utils.emptyString

// TODO: make those configurable
const val ARG_PREFIX = "--"
const val SHORTHAND_ARG_PREFIX = "-"

internal fun processRefs(
    toolchain: Toolchain,
    passedParams: MutableList<String>
): Map<String, RefWithAnyValue> {
    val (optionals, required) = toolchain.parameters.partition { it.optional }

    val refAccumulator = consumeRequired(passedParams, required)
    val unsetOptionals = consumeOptionals(refAccumulator, passedParams, optionals)
    processPredefined(refAccumulator, toolchain, passedParams)

    refAccumulator += getDefaultValuesFor(unsetOptionals)
    refAccumulator += getConstantsOf(toolchain)

    return refAccumulator
}

private fun getConstantsOf(toolchain: Toolchain) =
    toolchain.constants.fold(emptyList<RefWithValue<String>>()) { acc, it ->
        acc + listOf(RefWithValue(it, it.value.str(acc)))
    }.associateBy { it.ref.name }

private fun getDefaultValuesFor(unsetOptionals: Set<ParamDefinition>) =
    unsetOptionals.associate {
        it.name to RefWithValue(
            it,
            when (it) {
                is ArgDefinition -> it.default ?: emptyString()
                is FlagDefinition -> false.toString()
                else -> throw Exception("Type `${it::class.simpleName}` is not supported")
            }
        )
    }

private fun consumeOptionals(
    refAccumulator: MutableMap<String, RefWithValue<*>>,
    passedParams: MutableList<String>,
    optionals: List<ParamDefinition>
): Set<ParamDefinition> {
    val optionalsSet = optionals.toMutableSet()
    while (optionalsSet.isNotEmpty() && passedParams.isNotEmpty()) {
        val first = passedParams.first()
        val newParams = when {
            first.startsWith(ARG_PREFIX) -> getParamsFromNamePrefixed(passedParams, optionals)
            first.startsWith(SHORTHAND_ARG_PREFIX) -> getParamsFromShorthandPrefixed(passedParams, optionals)
            else -> break
        }
        refAccumulator += newParams
        optionalsSet.removeAll(newParams.values.map { it.ref }.toSet())
    }
    return optionalsSet
}

private fun consumeRequired(
    passedParams: MutableList<String>,
    required: List<ParamDefinition>
): MutableMap<String, RefWithValue<*>> =
    required.associate { paramDef ->
        paramDef.name to RefWithValue(paramDef, getNextValue(paramDef, passedParams)) as RefWithAnyValue
    }.toMutableMap()

fun getNextValue(paramDef: ParamDefinition, params: MutableList<String>): String {
    val paramValue =
        params.removeFirstOrNull() ?: throw ParameterException(
            paramDef,
            "Parameter ${paramDef.name} needs a value"
        )
    if (paramValue.startsWith(ARG_PREFIX) || paramValue.startsWith(SHORTHAND_ARG_PREFIX)) {
        throw ParameterException(
            paramDef,
            "Parameter ${paramDef.name} is not a flag, and needs an appropriate value."
        )
    }
    return paramValue
}

private fun processPredefined(
    refAccumulator: MutableMap<String, RefWithAnyValue>,
    toolchain: Toolchain,
    passedParams: MutableList<String>
) {
    // Process unmatched
    val unmatchedPredefined = toolchain.predefinedParameters.find { it.name == "__UNMATCHED" } ?: return
    refAccumulator[unmatchedPredefined.name] = RefWithValue(unmatchedPredefined, passedParams.toTypedArray())
    passedParams.clear()
}

private fun getParamsFromShorthandPrefixed(
    passedParams: MutableList<String>,
    optionals: List<ParamDefinition>
): Map<String, RefWithValue<String>> {
    val next = passedParams.removeFirst().drop(SHORTHAND_ARG_PREFIX.length)
    val shortHandToOptionals = optionals.associateBy { it.shorthand }
    return when {
        next.length > 1 -> getFlagsFromManyShorthands(shortHandToOptionals, next)
        next.length == 1 -> getParamsFromSingleShorthand(shortHandToOptionals, next, passedParams)
        else -> throw Exception("Cannot pass empty shorthand")
    }
}

private fun getParamsFromSingleShorthand(
    shortHandToOptionals: Map<String?, ParamDefinition>,
    name: String,
    passedParams: MutableList<String>
): Map<String, RefWithValue<String>> {
    val paramDef = shortHandToOptionals[name] ?: throw ParameterNotDefinedException(name)
    return mapOf(
        paramDef.name to RefWithValue(
            paramDef,
            when (paramDef) {
                is FlagDefinition -> true.toString()
                is ArgDefinition -> getNextValue(paramDef, passedParams)
                else -> throw Exception("Type is not supported") // TODO proper error
            }
        )
    )
}

private fun getFlagsFromManyShorthands(
    shortHandToOptionals: Map<String?, ParamDefinition>,
    next: String
) = next.map {
    shortHandToOptionals[it.toString()] ?: throw ParameterNotDefinedException(it.toString())
}.onEach {
    if (it is FlagDefinition) {
        throw Exception("Parameter ${it.name} cannot be used as a flag")
    }
}
    .associate {
        it.name to RefWithValue(
            it,
            true.toString()
        )
    }

private fun getParamsFromNamePrefixed(
    passedParams: MutableList<String>,
    optionals: List<ParamDefinition>
): Map<String, RefWithValue<String>> {
    val name = passedParams.removeFirst().drop(ARG_PREFIX.length)
    if (name.isEmpty()) {
        throw Exception("Cannot pass empty arg name") // TODO proper error
    }
    val paramDef = optionals.firstOrNull { it.name == name } ?: throw ParameterNotDefinedException(name)
    return mapOf(
        name to RefWithValue(
            paramDef,
            when (paramDef) {
                is ArgDefinition -> getNextValue(paramDef, passedParams)
                is FlagDefinition -> true.toString()
                else -> throw Exception("Type is not supported") // TODO proper error
            }
        )
    )
}
