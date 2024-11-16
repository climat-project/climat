import org.jetbrains.kotlin.gradle.targets.js.nodejs.NodeJsRootPlugin.Companion.kotlinNodeJsExtension
import org.jetbrains.kotlin.ir.backend.js.compile

plugins {
    kotlin("multiplatform") version "2.0.21"
}

kotlin {

    js(IR) {
        binaries.library()
        nodejs {
            testTask {
                useMocha {
                    timeout = "30000"
                }
            }
        }
        useCommonJs()
    }

    sourceSets {
        val jsTest by getting {
            kotlin.srcDir("src/test/kotlin")
            resources.srcDir("src/test/resources")

            dependencies {
                implementation(kotlin("test"))

                // https://github.com/Kotlin/kotlinx-nodejs/issues/16
                implementation(files("../lib/kotlinx-nodejs-0.0.7.klib"))

                implementation("io.kotest:kotest-assertions-core:5.8.0")

                runtimeOnly(rootProject)
            }
        }
    }

}
