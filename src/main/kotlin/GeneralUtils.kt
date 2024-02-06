package com.climat

fun jsObjectOf(vararg props: Pair<String, Any?>): dynamic {
    val ans: dynamic = object {}
    props.forEach {
        ans[it.first] = it.second
    }
    return ans
}
