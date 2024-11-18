package com.climat.output

import process

fun <T, U> prettify(fn: (arg1: T, arg2: U) -> Unit): (arg1: T, arg2: U) -> Unit =
    { a1, a2 ->
        try {
            fn(a1, a2)
        } catch (ex: Throwable) {
            ex.handle()
        }
    }

fun prettify(fn: () -> Unit): (() -> Unit) =
    {
        try {
            fn()
        } catch (ex: Throwable) {
            ex.handle()
        }
    }

fun Throwable.handle() {
    console.error(error("Fatal:"))
    console.error(error(message ?: stackTraceToString()))
    console.error(error(stackTraceToString()))
    process.exit(-1)
}
