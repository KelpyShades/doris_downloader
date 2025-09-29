package com.doris.doris_downloader

import android.content.Intent
import android.media.MediaScannerConnection
import android.net.Uri
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.File

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.example.doris_downloader/media_scanner"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "scanFile" -> {
                    val filePath = call.argument<String>("filePath")
                    if (filePath != null) {
                        scanFile(filePath)
                        result.success(null)
                    } else {
                        result.error("INVALID_ARGUMENT", "File path is null", null)
                    }
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    private fun scanFile(filePath: String) {
        val file = File(filePath)
        
        // Tell Android's media scanner about this file so it appears in gallery
        MediaScannerConnection.scanFile(
            this,
            arrayOf(file.absolutePath),
            null
        ) { path, uri ->
            println("Media scanner registered file: $path")
        }
    }
}