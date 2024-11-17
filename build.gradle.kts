import org.jetbrains.kotlin.gradle.targets.js.nodejs.NodeJsRootPlugin
import org.jetbrains.kotlin.gradle.targets.js.nodejs.NodeJsRootPlugin.Companion.kotlinNodeJsExtension

plugins {
    kotlin("multiplatform") version "2.0.21"
    id("org.jlleitschuh.gradle.ktlint") version "12.1.0"
    // id("com.dorongold.task-tree") version "2.1.1"
}

fun getProp(name: String) = project.properties[name].toString()

group = getProp("group")
version = getProp("version")

allprojects {
    repositories {
        mavenCentral()
    }
}

kotlin {

    jvmToolchain(21)

    js {
        compilations["main"].packageJson {
            description = getProp("description")
            customField(
                "bin",
                mapOf(
                    "climat" to "./kotlin/climat.js",
                ),
            )
            arrayOf("repository", "homepage", "author", "license", "description")
                .forEach {
                    customField(it, getProp(it))
                }
            customField("keywords", getProp("keywords").split(","))
            customField(
                "engines",
                mapOf(
                    "node" to ">=13.14",
                ),
            )
        }

        browser { // Not really for browser, but it is the only way to use webpack
            webpackTask {
                mainOutputFileName.set("kotlin/climat.js")
                output.libraryTarget = "commonjs2"
            }
            useCommonJs()
        }
        binaries.executable()
    }

    sourceSets {
        val jsMain by getting {
            kotlin.srcDirs("src/main/kotlin")
            dependencies {
                implementation(devNpm("copy-webpack-plugin", "^12.0.2"))

                implementation(npm("colors", "^1.4.0"))
                implementation(npm("fs-extra", "11.1.0"))
                implementation(npm("node-fetch", "^2.6.8"))
                implementation(npm("untildify", "^4.0.0"))
                implementation(npm("fs-extra", "11.1.0"))
                implementation(npm("yesno", "^0.4.0"))

                implementation(project("climatEngine"))

                implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.9.0")

                // https://github.com/Kotlin/kotlinx-nodejs/issues/16
                implementation(files("./lib/kotlinx-nodejs-0.0.7.klib"))

                implementation("org.lighthousegames:logging-js:1.3.0")
            }
        }
    }

    ktlint.filter {
        exclude { it.file.path.contains("generated") }
    }
}

tasks {
    register<Copy>("copyLicenceAndReadme") {
        from("LICENSE.md", "README.md")
        into("build/js/packages/${project.name}")
        dependsOn("kotlinNpmInstall")
    }
    named("jsBrowserProductionWebpack") {
        dependsOn("copyLicenceAndReadme")
    }
}

plugins.withType<NodeJsRootPlugin> {
    rootProject.kotlinNodeJsExtension.download = false
}
