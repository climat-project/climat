package com.climat.library.domain.action

import com.climat.library.jsExportable.JsExportableMap
import org.antlr.v4.kotlinruntime.ast.Position
import kotlin.js.ExperimentalJsExport
import kotlin.js.JsExport

@OptIn(ExperimentalJsExport::class)
@JsExport
class JavaScriptActionValue internal constructor(
    val customScript: String,
    override val sourceMap: Position?
) : ActionValueBase<Map<String, Any>>() {
    val valueForJs: JsExportableMap<String, Any>?
        get() = value?.let(::JsExportableMap)
}
