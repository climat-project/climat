package com.climat.library.dslParser.dsl

import climat.lang.DslParser
import com.climat.library.domain.action.ActionValueBase
import com.climat.library.domain.action.JavaScriptActionValue
import com.climat.library.domain.action.ScopeParamsActionValue
import com.climat.library.domain.action.TemplateActionValue
import com.climat.library.dslParser.exception.assertRequire
import com.climat.library.dslParser.exception.throwExpected
import com.climat.library.dslParser.template.decodeTemplate
import com.climat.library.utils.noopAction

internal fun decodeSubAction(cliDsl: String, statements: List<DslParser.SubStatementsContext>): ActionValueBase<*> =
    decodeRootAction(cliDsl, statements.map { it.rootStatements() })

internal fun decodeRootAction(cliDsl: String, statements: List<DslParser.RootStatementsContext>): ActionValueBase<*> {
    val actions = statements.mapNotNull { it.action() }.toList()
    if (actions.size >= 2) actions[1].throwExpected("More than one action property is not allowed", cliDsl)
    if (actions.size != 1) return noopAction()

    val child = actions.first()
    val shellAction = child.shellAction()
    val javascriptAction = child.javascriptAction()

    return when {
        shellAction != null -> TemplateActionValue(
            decodeTemplate(cliDsl, shellAction.actionTemplateEntry()),
            shellAction.position
        )
        javascriptAction != null -> JavaScriptActionValue(
            javascriptAction.assertRequire(cliDsl) { CustomScript_SCRIPT() }.text,
            javascriptAction.position
        )
        else -> child.assertRequire(cliDsl) { SCOPE_PARAMS() }.text.let { ScopeParamsActionValue() }
    }
}
