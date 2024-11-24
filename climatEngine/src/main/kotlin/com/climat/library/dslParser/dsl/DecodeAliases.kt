package com.climat.library.dslParser.dsl

import climat.lang.DslParser.RootModifiersContext
import com.climat.library.domain.toolchain.Alias
import com.climat.library.dslParser.exception.assertRequire

internal fun decodeAliases(cliDsl: String, statements: List<RootModifiersContext>): Array<Alias> {
    val aliases =
        statements.mapNotNull { it.aliasesModifier() }.flatMap { it.IDENTIFIER() }.map { Alias(it.text) } +
            statements.mapNotNull { it.aliasModifier() }
                .map { Alias(it.assertRequire(cliDsl) { IDENTIFIER() }.text) }
    return aliases.toTypedArray()
}
