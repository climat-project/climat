package com.climat.library.dslParser.dsl

import climat.lang.DslLexer
import climat.lang.DslParser
import com.climat.library.domain.toolchain.RootToolchain
import com.climat.library.dslParser.docstring.decodeDocstring
import com.climat.library.dslParser.exception.CliDslErrorListener
import com.climat.library.dslParser.exception.assertRequire
import org.antlr.v4.kotlinruntime.CharStreams
import org.antlr.v4.kotlinruntime.CommonTokenStream

internal fun decodeCliDsl(cliDsl: String): RootToolchain {
    val root = getRoot(cliDsl)

    val statements = root.assertRequire(cliDsl) { findRootBody() }.findRootStatements()
    val params = root.findParams()?.findParam().orEmpty()
    val docstring = decodeDocstring(cliDsl, root.findDocstring())
    val modifiers = root.findRootModifiers()

    val identifier = root.assertRequire(cliDsl) { IDENTIFIER() }
    val allowUnmatchedMod = modifiers.firstNotNullOfOrNull { it.MOD_ALLOW_UNMATCHED() }

    return RootToolchain(
        sourceCode = cliDsl,

        name = identifier.text,
        description = docstring.subDoc,
        parameters = decodeParams(cliDsl, params, docstring.paramDoc),
        action = decodeRootAction(cliDsl, statements),
        children = decodeRootChildren(cliDsl, statements),
        constants = decodeRootConstants(cliDsl, statements),
        allowUnmatched = allowUnmatchedMod != null,
        resources = emptyArray(),
        predefinedParameters = decodeRootPredefinedParams(modifiers),
        sourceMap = root.position,
        aliases = decodeAliases(cliDsl, modifiers)
    )
}

private fun getRoot(cliDsl: String): DslParser.RootContext {
    val lexer = DslLexer(CharStreams.fromString(cliDsl))
    val parser = DslParser(CommonTokenStream(lexer))
    parser.addErrorListener(CliDslErrorListener(cliDsl))

    return parser.root()
}
