package com.climat.management

import com.climat.Fs
import com.climat.fetch
import com.climat.untildify
import kotlinx.coroutines.await

suspend fun getDslText(uriToDsl: String): String {
    val isHttpUri = uriToDsl.startsWith("https://") || uriToDsl.startsWith("http://")

    return if (isHttpUri) {
        val response = fetch(uriToDsl).await()
        if (response.ok) {
            response.text().await()
        } else {
            throw Exception("Server response ${response.status}: ${response.statusText}")
        }
    } else {
        Fs.readFile(untildify(uriToDsl), "utf8").await()
    }
}
