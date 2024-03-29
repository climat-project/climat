package com.climat.library.validation.validations

import com.climat.library.domain.action.NoopActionValue
import com.climat.library.validation.ValidationBase
import com.climat.library.validation.ValidationContext
import com.climat.library.validation.ValidationEntry
import com.climat.library.validation.ValidationResult
import com.climat.library.validation.ValidationResult.ValidationEntryType.Warning

internal class UselessToolchain : ValidationBase() {
    override val type = Warning
    override val code = ValidationCode.UselessToolchain

    override fun validate(ctx: ValidationContext): Sequence<ValidationEntry> =
        ctx.toolchain.let {
            if (it.action is NoopActionValue && it.children.isEmpty()) {
                sequenceOf(it.validationEntry("`${it.name}` toolchain is useless. Has no children or action"))
            } else {
                emptySequence()
            }
        }
}
