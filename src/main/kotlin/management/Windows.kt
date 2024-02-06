package com.climat.management

import NodeJS.get
import com.climat.Fs
import com.climat.Path.win32
import com.climat.jsObjectOf
import com.climat.output.warn
import kotlinx.coroutines.await
import os.EOL
import os.homedir
import process
import kotlin.js.Promise

val WINDOWS_CLIMAT_HOME = win32.join(homedir(), CLIMAT_HOME_DIR_NAME)
val WINDOWS_TOOLCHAIN_HOME = win32.join(WINDOWS_CLIMAT_HOME, "toolchains")

private val climatBinPath = win32.join(WINDOWS_CLIMAT_HOME, "bin")

private fun getBatchScript(name: String): String = "@echo off${EOL}climat runGlobal \"$name\" %*"

private fun getAliasScript(name: String): String = "@echo off$EOL%~dp0$name %*"

private fun getBatchFilePath(name: String): String = win32.join(climatBinPath, "$name.bat")

suspend fun windowsInstall(
    manifest: String,
    name: String,
    aliases: Array<String>,
) {
    moveManifestToClimatHome(WINDOWS_TOOLCHAIN_HOME, manifest, name)

    val batchFilePath = getBatchFilePath(name)
    Fs.ensureDir(climatBinPath).await()

    Fs.writeFile(batchFilePath, getBatchScript(name)).await()

    val aliasScript = getAliasScript(name)

    Promise.all(
        aliases.map { Fs.writeFile(getBatchFilePath(it), aliasScript) }.toTypedArray(),
    ).await()

    // TODO: add path automatically
    // This requires writing to the Windows registry
    // Was attempted before but it was deleted (see 608553d9073a08df9e2329c0e3d97354cca4b4e7)

    if (process.env["PATH"]?.contains(climatBinPath) != true) {
        console.warn(warn("Please add '$climatBinPath' to system PATH"))
    }
}

suspend fun windowsUninstall(name: String) {
    removeAliasSymlinks(name, climatBinPath, WINDOWS_TOOLCHAIN_HOME, ".bat")
    removeToolchain(WINDOWS_TOOLCHAIN_HOME, name)
    Fs.rm(getBatchFilePath(name)).await()
}

suspend fun windowsPurge() {
    Fs.rm(
        WINDOWS_CLIMAT_HOME,
        jsObjectOf(
            "recursive" to true,
        ),
    ).await()
}
