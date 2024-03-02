package com.climat.library.dslParser.dsl

import climat.lang.DslParser
import com.climat.library.domain.toolchain.DescendantToolchain

internal fun decodeSubChildren(
    cliDsl: String,
    statements: List<DslParser.SubStatementsContext>
): Array<DescendantToolchain> =
    decodeRootChildren(cliDsl, statements.map { it.rootStatements() })

internal fun decodeRootChildren(
    cliDsl: String,
    statements: List<DslParser.RootStatementsContext>
): Array<DescendantToolchain> =
    statements.mapNotNull { it.sub() }
        .map { decodeSub(cliDsl, it) }
        .toTypedArray()
