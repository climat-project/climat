
fun runClimat(args: String): String {
    return run("climat $args")
}

fun run(args: String): String {
    return child_process.execSync(args).toString("utf8").trim()
}