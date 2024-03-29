import io.kotest.assertions.throwables.shouldNotThrow
import io.kotest.assertions.throwables.shouldNotThrowAny
import io.kotest.assertions.throwables.shouldThrowAny
import io.kotest.matchers.shouldBe
import io.kotest.matchers.string.shouldContain
import kotlin.test.Test
import kotlin.test.expect

class ManagementTest {

    @Test
    fun installs() {
        shouldNotThrowAny { runClimat("install kotlin/test-toolchain.cli") }
        shouldNotThrowAny { run("test-toolchain") }
        run("test-toolchain child --arg1 abc --arg2 bcd") shouldBe "Hello! I was executed with arg1 = abc and arg2 = bcd"
        listOf("test-toolchain", "test2", "test3").forEach {
            run("$it child --arg1 value1 --arg2 value2 grandchild1") shouldBe "Hello from the other side value1 value2"
        }
        run("test-toolchain child --arg1 val1 --arg2 val2 grandchild2 val3") shouldBe "Hello from JS! val3 val1 val2"
        run("test-toolchain child --arg1 \"val 1\" --arg2 \"val 2\"") shouldBe "Hello! I was executed with arg1 = val 1 and arg2 = val 2"
    }

    @Test
    fun lists() {
        runClimat("list") shouldContain "test-toolchain"
    }

    @Test
    fun uninstalls() {
        runClimat("uninstall test-toolchain")
        listOf("test-toolchain", "test2", "test3").forEach {
            shouldThrowAny { run(it) }
        }
    }

}