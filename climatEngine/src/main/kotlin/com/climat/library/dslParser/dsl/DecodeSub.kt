package com.climat.library.dslParser.dsl

import climat.lang.DslParser
import com.climat.library.domain.toolchain.DescendantToolchain
import com.climat.library.dslParser.docstring.decodeDocstring
import com.climat.library.dslParser.exception.assertRequire

internal fun decodeSub(cliDsl: String, sub: DslParser.SubContext): DescendantToolchain {
    val statements = sub.assertRequire(cliDsl) { subBody() }.subStatements()
    val params = sub.params()?.param().orEmpty()
    val docstring = decodeDocstring(cliDsl, sub.docstring())
    val rootModifiers = sub.subModifiers().mapNotNull { it.rootModifiers() }

    val name = sub.assertRequire(cliDsl) { IDENTIFIER() }
    val allowUnmatchedMod = rootModifiers.firstNotNullOfOrNull { it.MOD_ALLOW_UNMATCHED() }

    return DescendantToolchain(
        name = name.text,
        description = docstring.subDoc,
        parameters = decodeParams(cliDsl, params, docstring.paramDoc),
        action = decodeSubAction(cliDsl, statements),
        children = decodeSubChildren(cliDsl, statements),
        constants = decodeSubConstants(cliDsl, statements),
        allowUnmatched = allowUnmatchedMod != null,
        aliases = decodeAliases(cliDsl, rootModifiers),
        predefinedParameters = decodeRootPredefinedParams(rootModifiers),

        sourceMap = sub.position!!
    )
}
