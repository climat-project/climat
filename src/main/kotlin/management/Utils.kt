package com.climat.management

import com.climat.Fs
import com.climat.Path
import com.climat.jsObjectOf
import com.climat.library.commandParser.parse
import kotlinx.coroutines.await
import path.path.PlatformPath
import process
import kotlin.js.Promise

const val CLIMAT_HOME_DIR_NAME = "climat"
const val MAIN_MANIFEST_NAME = "climat.cli"

private val platformPath = platformPath()

suspend fun moveManifestToClimatHome(
    toolchainHome: String,
    manifest: String,
    name: String,
) {
    val path = platformPath()
    val toolchainDir = path.join(toolchainHome, name)
    val permissions = 0b111101101 // 755 in octa

    Fs.ensureDir(path = toolchainHome).await()
    Fs.chmod(path = toolchainHome, mode = permissions).await()

    Fs.ensureDir(path = toolchainDir).await()
    Fs.chmod(path = toolchainDir, mode = permissions).await()

    Fs.writeFile(
        path = path.join(toolchainDir, MAIN_MANIFEST_NAME),
        data = manifest,
    ).await()
}

suspend fun removeToolchain(
    toolchainHome: String,
    name: String,
) {
    try {
        Fs.rm(
            path = platformPath().join(toolchainHome, name),
            options = jsObjectOf("recursive" to true),
        ).await()
    } catch (ex: dynamic) {
        if (ex.code == "ENOENT") {
            throw Exception("Toolchain named `$name` was not found")
        }
        throw ex
    }
}

suspend fun removeAliasSymlinks(
    name: String,
    scriptBin: String,
    toolchainHome: String,
    nameSuffix: String = "",
) {
    val toolchain =
        parse(
            Fs.readFile(
                path = platformPath.join(toolchainHome, name, MAIN_MANIFEST_NAME),
                options = "utf8",
            )
                .await()
                .toString(),
        )
    val aliases = toolchain.aliases.map { it.name }
    Promise.all(
        aliases.map { alias -> Fs.unlink(platformPath.join(scriptBin, alias + nameSuffix)) }
            .toTypedArray(),
    ).await()
}

fun platformPath(): PlatformPath =
    choosePlatform(
        Path.posix,
        Path.win32,
    )

internal fun <T> choosePlatform(
    unix: T,
    windows: T,
): T =
    when (process.platform) {
        "linux", "darwin" -> unix
        "win32" -> windows
        else -> throw Exception("${process.platform} OS is not supported")
    }

suspend fun getInstalledToolchains(): List<String> {
    val climatHome = choosePlatform(UNIX_TOOLCHAIN_HOME, WINDOWS_TOOLCHAIN_HOME)

    return Fs.readdir(climatHome, jsObjectOf("withFileTypes" to true)).await()
        .filter { it.isDirectory() }
        .map { it.name }
}
