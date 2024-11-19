import io.kotest.assertions.throwables.shouldThrowAny
import io.kotest.matchers.shouldBe
import io.kotest.matchers.string.shouldContain
import kotlin.test.Test

class ManagementTest {

    @Test
    fun installs() {
        runClimat("install kotlin/test-toolchain.cli")
        run("test-toolchain")
        run("test-toolchain child --arg1 abc --arg2 bcd") shouldBe "Hello! I was executed with arg1 = abc and arg2 = bcd"
        listOf("test-toolchain", "test2", "test3").forEach {
            run("$it child --arg1 value1 --arg2 value2 grandchild1") shouldBe "Hello from the other side value1 value2"
        }
        run("test-toolchain child --arg1 val1 --arg2 val2 grandchild2 val3") shouldBe "Hello from JS! val3 val1 val2"
        run("test-toolchain child --arg1 \"val 1\" --arg2 \"val 2\"") shouldBe "Hello! I was executed with arg1 = val 1 and arg2 = val 2"

        run("test-toolchain") shouldBe "Hello! I was executed with arg0 = (no value for arg0)"
        run("test-toolchain --arg0 \"val 0\"") shouldBe "Hello! I was executed with arg0 = val 0"
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