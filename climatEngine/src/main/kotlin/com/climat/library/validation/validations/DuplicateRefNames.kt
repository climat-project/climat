package com.climat.library.validation.validations

import com.climat.library.domain.refs
import com.climat.library.validation.ValidationBase
import com.climat.library.validation.ValidationContext
import com.climat.library.validation.ValidationEntry
import com.climat.library.validation.ValidationResult
import com.climat.library.validation.ValidationResult.ValidationEntryType.Error

internal class DuplicateRefNames : ValidationBase() {
    override val type = Error
    override val code = ValidationCode.DuplicateRefNames

    override fun validate(ctx: ValidationContext): Sequence<ValidationEntry> =
        ctx.toolchain.refs
            .groupBy { it.name }
            .asSequence()
            .filter { (_, v) -> v.size >= 2 }
            .map { (k, v) -> v.last().validationEntry("Duplicate parameter name `$k`" /* TODO: put all parameters' sourcemap */) }
}
