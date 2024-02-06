package com.climat

import child_process.ExecSyncOptions
import com.climat.library.domain.action.CustomScriptActionValue
import com.climat.library.domain.action.TemplateActionValue
import com.climat.library.domain.toolchain.Toolchain
import kotlinx.coroutines.await
import vm.createContext
import vm.runInContext

suspend fun exec(
    pathToManifest: String,
    command: Array<String>,
    skipValidation: Boolean = false,
) {
    val manifest = Fs.readFile(untildify(pathToManifest), "utf8").await()
    doExec(manifest, command, skipValidation)
}

fun doExec(
    cliDsl: String,
    command: Array<String>,
    skipValidation: Boolean = true,
) {
    com.climat.library.commandParser.execute(
        command,
        cliDsl,
        { command, toolchain ->
            when (command) {
                is TemplateActionValue ->
                    child_process.execSync(
                        command.value!!,
                        object : ExecSyncOptions {
                            override var stdio = "inherit"
                        },
                    )
                is CustomScriptActionValue -> handleCustomScript(command, toolchain)
                else -> throw Exception("${command.type} not supported")
            }
        },
        skipValidation,
    )
}

fun handleCustomScript(
    command: CustomScriptActionValue,
    toolchain: Toolchain,
) {
    if (command.name != "js") {
        throw Exception("${command.name ?: "default"} custom script not supported")
    }

    val params: dynamic = object {}
    command.valueForJs?.entries?.forEach {
        params[it.key] = it.value
    }

    val scope =
        jsObjectOf(
            "params" to params,
            "command" to command,
            "toolchain" to toolchain,
            "console" to console,
        )

    runInContext(command.customScript, createContext(scope), "")
}

fun camelise(s: String): String {
    return s // TODO properly
}
