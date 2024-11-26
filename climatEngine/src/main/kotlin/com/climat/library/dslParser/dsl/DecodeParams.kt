package com.climat.library.dslParser.dsl

import climat.lang.DslParser.LiteralContext
import climat.lang.DslParser.ParamContext
import com.climat.library.domain.ref.ArgDefinition
import com.climat.library.domain.ref.FlagDefinition
import com.climat.library.domain.ref.ParamDefinition
import com.climat.library.dslParser.exception.assertRequire
import com.climat.library.dslParser.exception.throwExpected
import com.climat.library.dslParser.exception.throwUnexpected
import com.climat.library.utils.emptyString

internal fun decodeParams(
    cliDsl: String,
    params: List<ParamContext>,
    paramDescriptions: Map<String, String>
): Array<ParamDefinition> =
    params.map { parsedParam ->
        val paramName = parsedParam.assertRequire(cliDsl) { IDENTIFIER() }.text
        val description = paramDescriptions[paramName] ?: emptyString()
        val shorthand = parsedParam.paramShort()?.text
        parsedParam.assertRequire(cliDsl) { paramType() }.let { paramType ->
            val flag = paramType.FLAG()
            val argument = paramType.argument()
            if (flag != null) FlagDefinition(
                name = paramName,
                shorthand = shorthand,
                description = description,
                sourceMap = parsedParam.position!!
            )
            else if (argument != null) ArgDefinition(
                name = paramName,
                shorthand = shorthand,
                description = description,
                optional = (argument.QMARK() != null),
                default = argument.literal()?.let { decodeSimpleString(cliDsl, it) },
                sourceMap = parsedParam.position!!,
            )
            else paramType.throwUnexpected("Could not parse parameter type", cliDsl)
        }
    }.toTypedArray()

internal fun decodeSimpleString(cliDsl: String, literal: LiteralContext): String {
    val tpl = decodeLiteral(cliDsl, literal)
    if (tpl.refReferences.any()) {
        literal.throwExpected("String interpolation not supported for defaults", cliDsl)
        // TODO maybe we should support it?
    }
    return tpl.str(emptyList())
}
