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
import org.lighthousegames.logging.logging

// TODO: make those configurable
const val ARG_PREFIX = "--"
const val SHORTHAND_ARG_PREFIX = "-"

private val log = logging("RefProcessor")

internal fun processRefs(
    toolchain: Toolchain,
    passedParams: MutableList<String>
): Map<String, RefWithAnyValue> {
    log.debug { "Processing refs of toolchain <${toolchain.name}>" }

    val (optionals, required) = toolchain.parameters.partition { it.optional }

    val refAccumulator = consumeRequired(passedParams, required)
    val unsetOptionals = consumeOptionals(refAccumulator, passedParams, optionals)

    processPredefined(refAccumulator, toolchain, passedParams)

    refAccumulator += getDefaultValuesFor(unsetOptionals)
    refAccumulator += getConstantsOf(toolchain)

    return refAccumulator
}

private fun getConstantsOf(toolchain: Toolchain): Map<String, RefWithValue<String>> {
    log.debug { "Resolving constants" }

    val ans = toolchain.constants.fold(emptyList<RefWithValue<String>>()) { acc, it ->
        acc + listOf(RefWithValue(it, it.value.str(acc)))
    }.associateBy { it.ref.name }

    log.debug {
        if (ans.isEmpty()) "No resolved constants"
        else "Resolved constants: <$ans>"
    }
    return ans
}

private fun getDefaultValuesFor(unsetOptionals: Set<ParamDefinition>): Map<String, RefWithValue<String>> {
    val ans = unsetOptionals.associate {
        it.name to RefWithValue(
            it,
            when (it) {
                is ArgDefinition -> it.default ?: emptyString()
                is FlagDefinition -> false.toString()
                else -> throw Exception("Type `${it::class.simpleName}` is not supported")
            }
        )
    }

    log.debug { if(ans.keys.isEmpty()) null else "Set default values for params: <${ans.keys}>" }
    return ans
}

private fun consumeOptionals(
    refAccumulator: MutableMap<String, RefWithValue<*>>,
    passedParams: MutableList<String>,
    optionals: List<ParamDefinition>
): Set<ParamDefinition> {
    log.debug { "Trying to parse the optional params from $passedParams" }

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

    log.debug { "Succesfully parsed optional params. ${
        if (optionalsSet.isEmpty()) emptyString() else "Unset params <${optionalsSet.map { it.name }}>"
    } "  }
    return optionalsSet
}

private fun consumeRequired(
    passedParams: MutableList<String>,
    required: List<ParamDefinition>
): MutableMap<String, RefWithValue<*>> {
    log.debug { "Trying to parse the required params from $passedParams" }

    val ans = required.associate { paramDef ->
        paramDef.name to RefWithValue(paramDef, getNextValue(paramDef, passedParams)) as RefWithAnyValue
    }.toMutableMap()

    log.debug { "Successfully resolved values for params <${ans.keys}>" }
    return ans
}

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
    log.debug { "Processing unmatched parameters" }
    // Process unmatched
    val unmatchedPredefined = toolchain.predefinedParameters.find { it.name == "__UNMATCHED" } ?: return
    refAccumulator["__UNMATCHED"] = RefWithValue(unmatchedPredefined, passedParams.toTypedArray())

    log.debug { "Unmatched parameters: $passedParams" }

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
    log.debug { "Trying to resolve shorthand param named <$name>" }

    val paramDef = shortHandToOptionals[name] ?: throw ParameterNotDefinedException(name)
    val paramValue = when (paramDef) {
        is FlagDefinition -> true.toString()
        is ArgDefinition -> getNextValue(paramDef, passedParams)
        else -> throw Exception("Type is not supported") // TODO proper error
    }

    log.debug { "Resolved shorthand param <$name> to value <$paramValue>" }
    return mapOf(paramDef.name to RefWithValue(paramDef, paramValue))
}

private fun getFlagsFromManyShorthands(
    shortHandToOptionals: Map<String?, ParamDefinition>,
    next: String
): Map<String, RefWithValue<String>> {
    log.debug { "Trying to resolve shorthand flags: <$next>" }

    return next.map {
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
}

private fun getParamsFromNamePrefixed(
    passedParams: MutableList<String>,
    optionals: List<ParamDefinition>
): Map<String, RefWithValue<String>> {
    val name = passedParams.removeFirst().drop(ARG_PREFIX.length)

    log.debug { "Trying to resolve param named: <$name>" }

    if (name.isEmpty()) {
        throw Exception("Cannot pass empty arg name") // TODO proper error
    }
    val paramDef = optionals.firstOrNull { it.name == name } ?: throw ParameterNotDefinedException(name)
    val paramValue = when (paramDef) {
        is ArgDefinition -> getNextValue(paramDef, passedParams)
        is FlagDefinition -> true.toString()
        else -> throw Exception("Type is not supported") // TODO proper error
    }

    log.debug { "Resolved param <$name> to value <$paramValue>" }
    return mapOf(name to RefWithValue(paramDef, paramValue))
}
