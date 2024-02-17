import com.strumenta.antlrkotlin.gradle.AntlrKotlinTask

plugins {
    kotlin("multiplatform") version "1.9.22"
    id("com.strumenta.antlr-kotlin") version "1.0.0-RC1"
}

kotlin {
    sourceSets {
        val commonMain by getting {
            dependencies {
                api(kotlin("stdlib-common"))
                api("com.strumenta:antlr-kotlin-runtime:1.0.0-RC1")
            }
            kotlin.srcDir("build/generated-src/commonAntlr/kotlin")
            kotlin.srcDir("src/main/kotlin")
        }

        val commonTest by getting {
            kotlin.srcDir("src/test/kotlin")
            dependencies {
                implementation(kotlin("test"))
            }
        }
    }

    js(IR) {
        binaries.library()
        nodejs {
            testTask {
                useMocha()
            }
        }
        useCommonJs()
    }
}

tasks.register<AntlrKotlinTask>("generateKotlinCommonGrammarSource") {
    antlrClasspath = configurations.detachedConfiguration(
        project.dependencies.create("com.strumenta:antlr-kotlin-runtime:1.0.0-RC1")
    )
    maxHeapSize = "64m"
    packageName = "climat.lang"
    arguments = listOf("-no-visitor", "-no-listener")
    source = project.objects
        .sourceDirectorySet("antlr", "antlr")
        .srcDir("src/antlr").apply {
            include("**/*.g4")
        }
    outputDirectory = File("build/generated-src/commonAntlr/kotlin")
}

project.tasks.getByName("compileKotlinJs").dependsOn("generateKotlinCommonGrammarSource")
