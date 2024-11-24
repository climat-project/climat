package com.climat.library.dslParser.dsl

import climat.lang.DslParser.RootStatementsContext
import climat.lang.DslParser.SubStatementsContext
import com.climat.library.domain.ref.Constant
import com.climat.library.dslParser.exception.assertRequire

internal fun decodeSubConstants(cliDsl: String, statements: List<SubStatementsContext>): Array<Constant> =
    decodeRootConstants(cliDsl, statements.map { it.rootStatements() })

internal fun decodeRootConstants(cliDsl: String, statements: List<RootStatementsContext>): Array<Constant> =
    statements.mapNotNull { it.constDef() }
        .map { context ->
            context.assertRequire(cliDsl) { literal() }.let { literal ->
                Constant(
                    name = context.assertRequire(cliDsl) { IDENTIFIER() }.text,
                    value = decodeLiteral(cliDsl, literal),
                    sourceMap = context.position,
                    isBoolean = literal.stringTemplate() == null
                )
            }
        }.toTypedArray()
