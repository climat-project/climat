import org.jetbrains.kotlin.gradle.targets.js.nodejs.NodeJsRootPlugin
import org.jetbrains.kotlin.gradle.targets.js.nodejs.NodeJsRootPlugin.Companion.kotlinNodeJsExtension

plugins {
    kotlin("multiplatform") version "1.9.22"
    id("org.jlleitschuh.gradle.ktlint") version "12.1.0"
    // id("com.dorongold.task-tree") version "2.1.1"
}

fun getProp(name: String) = project.properties[name].toString()

group = getProp("group")
version = getProp("version")

allprojects {
    repositories {
        mavenCentral()
        jcenter()
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
                    "bun" to ">=0.5.6",
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
                implementation(devNpm("copy-webpack-plugin", "^11.0.0"))

                implementation(npm("colors", "^1.4.0"))
                implementation(npm("fs-extra", "11.1.0"))
                implementation(npm("node-fetch", "^2.6.8"))
                implementation(npm("untildify", "^4.0.0"))
                implementation(npm("fs-extra", "11.1.0"))
                implementation(npm("yesno", "^0.4.0"))

                implementation(project("climatEngine"))

                implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.8.0")
                implementation("org.jetbrains.kotlinx:kotlinx-nodejs:0.0.7")
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

