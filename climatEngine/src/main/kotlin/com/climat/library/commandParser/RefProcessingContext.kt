package com.climat.library.commandParser

import com.climat.library.domain.toolchain.Toolchain

data class RefProcessingContext(
    val toolchain: Toolchain,
    val passedParams: MutableList<String>
)