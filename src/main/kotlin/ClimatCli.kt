package com.climat

import com.climat.Path.join
import com.climat.library.commandParser.parse
import com.climat.management.MAIN_MANIFEST_NAME
import com.climat.management.UNIX_TOOLCHAIN_HOME
import com.climat.management.WINDOWS_TOOLCHAIN_HOME
import com.climat.management.choosePlatform
import com.climat.management.getDslText
import com.climat.management.getInstalledToolchains
import com.climat.management.platformPath
import com.climat.management.unixInstall
import com.climat.management.unixPurge
import com.climat.management.unixUninstall
import com.climat.management.windowsInstall
import com.climat.management.windowsPurge
import com.climat.management.windowsUninstall
import kotlinx.coroutines.await
import os.EOL
import process

class ClimatCli {
    suspend fun install(uriToDsl: String) {
        val dslText = getDslText(uriToDsl)
        val toolchain = parse(dslText)

        val aliasStrings = toolchain.aliases.map { it.name }.toTypedArray()

        choosePlatform(
            suspend { unixInstall(dslText, toolchain.name, aliasStrings) },
            suspend { windowsInstall(dslText, toolchain.name, aliasStrings) },
        ).invoke()
    }

    suspend fun runGlobal(
        name: String,
        command: Array<String>,
    ) {
        val toolchainHome = choosePlatform(UNIX_TOOLCHAIN_HOME, WINDOWS_TOOLCHAIN_HOME)
        val manifest = Fs.readFile(platformPath().join(toolchainHome, name, MAIN_MANIFEST_NAME), "utf8").await()
        doExec(manifest, command, true)
    }

    suspend fun uninstall(name: String) {
        choosePlatform(
            suspend { unixUninstall(name) },
            suspend { windowsUninstall(name) },
        ).invoke()
    }

    suspend fun run(command: Array<String>) {
        var wd = process.cwd()
        var i = 0

        while (Fs.pathExists(wd).await() && i < 50) {
            val pathToManifest = join(wd, MAIN_MANIFEST_NAME)
            if (Fs.pathExists(pathToManifest).await()) {
                exec(pathToManifest, command)
            }

            wd = join(wd, "..")
            ++i
        }

        console.log("No $MAIN_MANIFEST_NAME found up the directory hierarchy")
    }

    suspend fun list() {
        getInstalledToolchains().forEach { console.log(it) }
    }

    suspend fun purge() {
        val ok =
            yesno(
                jsObjectOf(
                    "question" to "Are you sure you want to delete these toolchains? (y/n)$EOL${
                        getInstalledToolchains().joinToString(EOL)
                    }$EOL>",
                    "defaultValue" to null,
                ),
            ).await()
        if (ok) {
            choosePlatform(
                suspend { unixPurge() },
                suspend { windowsPurge() },
            ).invoke()
        }
    }
}
