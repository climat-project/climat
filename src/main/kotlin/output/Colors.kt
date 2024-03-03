package com.climat.output

typealias Color = (String) -> Unit

@JsModule("colors")
@JsNonModule
private external object Colors {
    val red: Color
    val yellow: Color
    val blue: Color
    val green: Color
    val cyan: Color
}

val error = Colors.red
val warn = Colors.yellow
val debug = Colors.cyan
val success = Colors.green
val info = Colors.blue
