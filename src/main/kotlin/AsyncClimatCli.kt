package com.climat

import com.climat.output.handle
import com.climat.output.success
import kotlin.coroutines.Continuation
import kotlin.coroutines.EmptyCoroutineContext
import kotlin.coroutines.startCoroutine

class AsyncClimatCli {
    val climatCli = ClimatCli()

    @JsName("install") // Not really used for the name, but so that it is not eliminated by tree-shaking ...
    fun install(uriToDsl: String) = suspend { climatCli.install(uriToDsl) }.launch()

    @JsName("runGlobal")
    fun runGlobal(
        name: String,
        command: Array<String>,
    ) = suspend { climatCli.runGlobal(name, command) }.launch()

    @JsName("run")
    fun run(command: Array<String>) = suspend { climatCli.run(command) }.launch()

    @JsName("uninstall")
    fun uninstall(name: String) = suspend { climatCli.uninstall(name) }.launch()

    @JsName("list")
    fun list() = suspend { climatCli.list() }.launch()

    @JsName("purge")
    fun purge() = suspend { climatCli.purge() }.launch()

    companion object {
        fun (suspend () -> Unit).launch() {
            startCoroutine(
                object : Continuation<Unit> {
                    override val context = EmptyCoroutineContext

                    override fun resumeWith(result: Result<Unit>) =
                        if (result.isSuccess) {
                            console.log(success("Done !"))
                        } else {
                            result.exceptionOrNull()!!.handle()
                        }
                },
            )
        }
    }
}
