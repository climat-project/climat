package com.climat.library.dslParser.dsl

import climat.lang.DslParser.RootStatementsContext
import climat.lang.DslParser.SubStatementsContext
import com.climat.library.domain.toolchain.DescendantToolchain

internal fun decodeSubChildren(
    cliDsl: String,
    statements: List<SubStatementsContext>
): Array<DescendantToolchain> =
    decodeRootChildren(cliDsl, statements.map { it.rootStatements() })

internal fun decodeRootChildren(
    cliDsl: String,
    statements: List<RootStatementsContext>
): Array<DescendantToolchain> =
    statements.mapNotNull { it.sub() }
        .map { decodeSub(cliDsl, it) }
        .toTypedArray()
