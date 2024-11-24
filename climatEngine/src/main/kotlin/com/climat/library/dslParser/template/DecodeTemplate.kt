package com.climat.library.dslParser.template

import climat.lang.DslParser
import climat.lang.DslParser.StringTemplateEntryContext
import com.climat.library.domain.action.template.Interpolation
import com.climat.library.domain.action.template.SimpleString
import com.climat.library.domain.action.template.Template
import com.climat.library.dslParser.exception.assertRequire
import com.climat.library.dslParser.exception.throwUnexpected

internal fun decodeTemplate(cliDsl: String, templateEntries: List<DslParser.ActionTemplateEntryContext>): Template {
    return Template(
        templateEntries.map {
            it.actionTemplateContent()?.let { SimpleString.create(it.text) }
                ?: it.actionTemplateInterpolation()?.let {
                    val name = it.assertRequire(cliDsl) { Interpolation_IDENTIFIER() }.text
                    val mapping = it.mapping()?.Interpolation_IDENTIFIER()?.text
                    val isFlipped = it.Interpolation_NEGATE() != null

                    Interpolation(name, mapping, isFlipped)
                } ?: it.throwUnexpected("No content or interpolation found", cliDsl)
        }
    )
}

internal fun decodeTemplate(cliDsl: String, strTpl: DslParser.StringTemplateContext): Template =
    decodeTemplate(cliDsl, strTpl.stringTemplateEntry())

internal fun decodeTemplate(cliDsl: String, templateEntries: List<StringTemplateEntryContext>): Template =
    Template(
        templateEntries.map {
            it.stringTemplateContent()?.let { SimpleString.create(it.text) }
                ?: it.stringTemplateInterpolation()?.let {
                    val name = it.assertRequire(cliDsl) { Interpolation_IDENTIFIER() }.text
                    val mapping = it.mapping()?.Interpolation_IDENTIFIER()?.text
                    val isFlipped = it.Interpolation_NEGATE() != null

                    Interpolation(name, mapping, isFlipped)
                } ?: it.throwUnexpected("No content or interpolation found", cliDsl)
        }
    )
