import io.kotest.assertions.throwables.shouldNotThrowAny
import io.kotest.matchers.shouldBe
import kotlin.test.Test

class DocumentationExamplesTest {
    val DOCUMENTATION_EXAMPLES = "kotlin/documentationExamples"

    @Test fun subcommands() {
        shouldNotThrowAny { runClimat("install $DOCUMENTATION_EXAMPLES/subcommands.cli") }
        run("my-toolchain") shouldBe "Hello"
        run("my-toolchain child-toolchain") shouldBe "Child"
    }
    @Test fun aliases() {
        shouldNotThrowAny { runClimat("install $DOCUMENTATION_EXAMPLES/aliases.cli") }
        run("my-toolchain child-toolchain") shouldBe "Child"
        run("my-toolchain child") shouldBe "Child"
        run("my-toolchain ct") shouldBe "Child"
        run("my-toolchain cld") shouldBe "Child"
    }
    @Test fun constants() {
        shouldNotThrowAny { runClimat("install $DOCUMENTATION_EXAMPLES/constants.cli") }
        run("my-toolchain") shouldBe "My Dear Constant Value"
    }
    @Test fun constantsScope() {
        shouldNotThrowAny { runClimat("install $DOCUMENTATION_EXAMPLES/constants-scope.cli") }
        run("my-toolchain my-child") shouldBe "Child My Dear Constant Value"
    }
    @Test fun templates() {
        shouldNotThrowAny { runClimat("install $DOCUMENTATION_EXAMPLES/templates.cli") }
        run("my-toolchain my-child") shouldBe "Child My Dear Constant Value"
    }
    @Test fun parameters() {
        shouldNotThrowAny { runClimat("install $DOCUMENTATION_EXAMPLES/parameters.cli") }
    }
    @Test fun parametersScope() {
        shouldNotThrowAny { runClimat("install $DOCUMENTATION_EXAMPLES/parameters-scope.cli") }
        run("hello-world Cluj-Napoca") shouldBe "Hello World from Cluj-Napoca"
        run("hello-world Cluj-Napoca child") shouldBe "Hello Child from Cluj-Napoca"
    }
    @Test fun optionals() {
        shouldNotThrowAny { runClimat("install $DOCUMENTATION_EXAMPLES/optionals.cli") }
        run("hello-world") shouldBe "Hello World from"
        run("hello-world --location Cluj-Napoca") shouldBe "Hello World from Cluj-Napoca"
    }
    @Test fun defaults() {
        shouldNotThrowAny { runClimat("install $DOCUMENTATION_EXAMPLES/defaults.cli") }
        run("hello-world") shouldBe "Hello World from the other side"
        run("hello-world -l Cluj-Napoca") shouldBe "Hello World from Cluj-Napoca"
        run("hello-world --location Cluj-Napoca") shouldBe "Hello World from Cluj-Napoca"
    }
    @Test fun mappingFlags() {
        shouldNotThrowAny { runClimat("install $DOCUMENTATION_EXAMPLES/mapping-flags.cli") }
        run("hello-world foo") shouldBe "Hello World false"
        run("hello-world --goodDay foo") shouldBe "Hello World true"
        run("hello-world bar") shouldBe "Hello World"
        run("hello-world --goodDay bar") shouldBe "Hello World today-is-a-good-day"
        run("hello-world baz") shouldBe "Hello World today-is-NOT-a-good-day"
        run("hello-world --goodDay baz") shouldBe "Hello World"
    }
    @Test fun mappingArgs() {
        shouldNotThrowAny { runClimat("install $DOCUMENTATION_EXAMPLES/mapping-args.cli") }
        run("hello-world Tuesday foo") shouldBe "Hello World Tuesday"
        run("hello-world Tuesday bar") shouldBe "Hello World --today-is=Tuesday"
    }
    @Test fun javascript() {
        shouldNotThrowAny { runClimat("install $DOCUMENTATION_EXAMPLES/javascript.cli") }
        run("hello-world Cluj-Napoca") shouldBe "Hello World from a JavaScript environment !\n" +
        "It seems that you are situated in Cluj-Napoca\n" +
        "Is that correct?"
    }

}