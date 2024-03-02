package com.climat.platform
import os.homedir
import path.path

const val FILE_PERMISSIONS = 0b111_101_101 // 755 in octa
const val CLIMAT_HOME_DIR_NAME = "climat"
const val MAIN_MANIFEST_NAME = "climat.cli"

val posix = path.posix
val UNIX_CLIMAT_HOME = posix.join("/", "usr", "local", "lib", CLIMAT_HOME_DIR_NAME)
val UNIX_TOOLCHAIN_HOME = posix.join(UNIX_CLIMAT_HOME, "toolchains")
val UNIX_CLIMAT_SCRIPT_BIN = posix.join("/", "usr", "local", "bin")

val win32 = path.win32
val WINDOWS_CLIMAT_HOME = win32.join(homedir(), CLIMAT_HOME_DIR_NAME)
val WINDOWS_TOOLCHAIN_HOME = win32.join(WINDOWS_CLIMAT_HOME, "toolchains")
val WINDOWS_CLIMAT_BIN_PATH = win32.join(WINDOWS_CLIMAT_HOME, "bin")
