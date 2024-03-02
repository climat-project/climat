package com.climat

import NodeJS.get
import com.climat.output.warn
import org.lighthousegames.logging.LogLevel
import process

fun jsObjectOf(vararg props: Pair<String, Any?>): dynamic {
    val ans: dynamic = object {}
    props.forEach {
        ans[it.first] = it.second
    }
    return ans
}

private const val LOG_LEVEL_ENV_VAR_NAME = "CLIMAT_LOG_LEVEL"

fun getLogLevel() =
    process.env[LOG_LEVEL_ENV_VAR_NAME]?.let {
        if (it.lowercase() == "debug") {
            LogLevel.Debug
        } else {
            console.warn(
                warn(
                    "Invalid value for <$LOG_LEVEL_ENV_VAR_NAME> environment variable." +
                        " In order to see debugging information, please set CLIMAT_LOG_LEVEL to DEBUG",
                ),
            )
            null
        }
    } ?: LogLevel.Off
