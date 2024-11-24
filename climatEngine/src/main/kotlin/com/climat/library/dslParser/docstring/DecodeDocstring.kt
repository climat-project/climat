package com.climat.library.dslParser.docstring

import climat.lang.DslParser
import com.climat.library.dslParser.exception.assertRequire
import com.climat.library.utils.emptyString

internal fun decodeDocstring(cliDsl: String, docstring: DslParser.DocstringContext?): Docstring {
    if (docstring == null) {
        return Docstring.empty
    }
    val entries = docstring.docstringEntry()
    if (entries.isEmpty()) {
        return Docstring.empty
    }
    val content = entries.first().Docstring_CONTENT()

    return if (content != null) {
        Docstring(content.text.trim(), pair(cliDsl, entries.drop(1)))
    } else {
        Docstring(emptyString(), pair(cliDsl, entries))
    }
}

private fun pair(cliDsl: String, docs: List<DslParser.DocstringEntryContext>) =
    docs.chunked(2)
        .map { (tag, doc) -> tag.assertRequire(cliDsl) { paramTag() } to doc.assertRequire(cliDsl) { Docstring_CONTENT() } }
        .associate { (tag, doc) -> tag.assertRequire(cliDsl) { Docstring_IDENTIFIER() }.text.trim() to doc.text.trim() }
