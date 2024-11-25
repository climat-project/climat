package com.climat.library.dslParser.dsl

import climat.lang.DslParser.LiteralContext
import com.climat.library.domain.action.template.SimpleString
import com.climat.library.domain.action.template.Template
import com.climat.library.dslParser.exception.assertRequire
import com.climat.library.dslParser.template.decodeTemplate

internal fun decodeLiteral(cliDsl: String, literal: LiteralContext): Template {
    val stringTemplate = literal.stringTemplate()
    return if (stringTemplate != null)
        decodeTemplate(cliDsl, stringTemplate.stringTemplateEntry())
    else
        literal.assertRequire(cliDsl) { booleanLiteral() }
        .text
        .let(::SimpleString)
        .let(::listOf)
        .let(::Template)
}
