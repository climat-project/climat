package com.climat.library.commandParser.exception

internal class ParameterNotDefinedException(val name: String) : Error("Parameter <$name> is not defined")
