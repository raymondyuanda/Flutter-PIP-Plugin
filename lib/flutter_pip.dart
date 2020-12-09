import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPIP {
  static const MethodChannel _channel = const MethodChannel('FlutterPIP');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static void enterPictureInPictureMode() {
    _channel.invokeMethod('enterPictureInPictureMode');
  }

  static Future<bool> get isInPictureInPictureMode async {
    final bool result = await _channel.invokeMethod('isInPictureInPictureMode');
    return result;
  }
}
