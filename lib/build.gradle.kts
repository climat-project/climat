
buildscript {
    repositories {
        maven("https://jitpack.io")
    }
    dependencies {
        classpath("com.strumenta.antlr-kotlin:antlr-kotlin-gradle-plugin:b5135079b8")
    }
}

plugins {
    kotlin("multiplatform") version "1.9.22"
}

kotlin {
    sourceSets {
        val commonMain by getting {
            dependencies {
                api(kotlin("stdlib-common"))
                api("com.strumenta.antlr-kotlin:antlr-kotlin-runtime:b5135079b8")
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
        browser {
            testTask {
                useMocha()
            }
        }
        useCommonJs()
    }
}

tasks.register<com.strumenta.antlrkotlin.gradleplugin.AntlrKotlinTask>("generateKotlinCommonGrammarSource") {
    antlrClasspath = configurations.detachedConfiguration(
        project.dependencies.create("com.strumenta.antlr-kotlin:antlr-kotlin-target:b5135079b8")
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

tasks.getByName("compileKotlinJs").dependsOn("generateKotlinCommonGrammarSource")
