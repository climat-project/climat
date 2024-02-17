package com.climat.platform

import com.climat.Fs
import com.climat.Path
import com.climat.jsObjectOf
import kotlinx.coroutines.await
import os.EOL
import kotlin.js.Promise

class Unix : Platform() {
    override val toolchainHome = UNIX_TOOLCHAIN_HOME
    override val platformPath = Path.posix
    override val climatScriptBin = UNIX_CLIMAT_SCRIPT_BIN

    override suspend fun install(
        pathToManifest: String,
        name: String,
        aliases: Array<String>,
    ) {
        val binPath = posix.join(climatScriptBin, name)
        moveManifestToClimatHome(toolchainHome, pathToManifest, name)

        if (Fs.pathExists(binPath).await()) return

        Fs.writeFile(
            binPath,
            getScriptContent(name),
            jsObjectOf("flag" to "wx"),
        ).await()
        Fs.chmod(binPath, FILE_PERMISSIONS).await()

        aliases.forEach {
            Fs.symlink(binPath, posix.join(climatScriptBin, it)).await()
            Fs.chmod(binPath, FILE_PERMISSIONS).await()
        }
    }

    override suspend fun uninstall(name: String) {
        removeAliasSymlinks(name)
        removeToolchain(name)
        Fs.rm(posix.join(climatScriptBin, name)).await()
    }

    // TODO: check if you really need platform specific implementation
    override suspend fun purge() {
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

    private companion object {
        fun getScriptContent(name: String) = "#!/bin/bash$EOL${EOL}climat runGlobal \"$name\" \"$@\"$EOL"
    }
}
