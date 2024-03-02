package com.climat.library.validation.validations

import com.climat.library.validation.ValidationBase
import com.climat.library.validation.ValidationContext
import com.climat.library.validation.ValidationEntry
import com.climat.library.validation.ValidationResult
import com.climat.library.validation.ValidationResult.ValidationEntryType.Error

internal class DefaultForRequiredParam : ValidationBase() {

    override val type = Error
    override val code = ValidationCode.DefaultForRequiredParam

    override fun validate(ctx: ValidationContext): Sequence<ValidationEntry> =
        (
            getScopeParams(ctx)
                .values
                .map { it.last() }
                .filter { !it.optional && it.default != null }
            ).let { defaultForRequired ->
            defaultForRequired.map {
                it.validationEntry("Param `$it` is required, and should not have default")
            }
        }.asSequence()
}
