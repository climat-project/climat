package com.climat.management

import com.climat.Fs
import com.climat.jsObjectOf
import kotlinx.coroutines.await
import os.EOL
import path.path
import kotlin.js.Promise

val posix = path.posix
val UNIX_CLIMAT_HOME = posix.join("/", "usr", "local", "lib", CLIMAT_HOME_DIR_NAME)
val UNIX_TOOLCHAIN_HOME = posix.join(UNIX_CLIMAT_HOME, "toolchains")
val climatScriptBin = posix.join("/", "usr", "local", "bin")

fun getScriptContent(name: String) = "#!/bin/bash$EOL${EOL}climat runGlobal \"$name\" \"$@\"$EOL"

suspend fun unixInstall(
    pathToManifest: String,
    name: String,
    aliases: Array<String>,
) {
    val binPath = posix.join(climatScriptBin, name)
    moveManifestToClimatHome(UNIX_TOOLCHAIN_HOME, pathToManifest, name)

    val permissions = 0b111101101 // 755 in octa

    if (!Fs.pathExists(binPath).await()) {
        Fs.writeFile(binPath, getScriptContent(name), "wx").await()
        Fs.chmod(binPath, permissions).await()

        aliases.forEach {
            Fs.symlink(binPath, posix.join(climatScriptBin, it)).await()
            Fs.chmod(binPath, permissions).await()
        }
    }
}

suspend fun unixUninstall(name: String) {
    removeAliasSymlinks(name, climatScriptBin, UNIX_TOOLCHAIN_HOME)
    removeToolchain(UNIX_TOOLCHAIN_HOME, name)
    Fs.rm(posix.join(climatScriptBin, name)).await()
}

suspend fun unixPurge() {
    Promise.all(
        getInstalledToolchains().map {
            Fs.rm(path = posix.join(climatScriptBin, it))
        }.toTypedArray(),
    ).await()

    Fs.rm(
        UNIX_CLIMAT_HOME,
        jsObjectOf(
            "recursive" to true,
        ),
    )
}
