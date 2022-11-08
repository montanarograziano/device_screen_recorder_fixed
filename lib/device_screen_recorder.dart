import 'dart:async';

import 'package:flutter/services.dart';

class DeviceScreenRecorder {
  static const MethodChannel _channel = const MethodChannel('device_screen_recorder');

  static Future<bool?> startRecordScreen({String? name}) async {
    final bool? version = await _channel.invokeMethod('startRecordScreen', {"name": name});
    return version;
  }

  static Future<String?> stopRecordScreen() async {
    final String? path = await _channel.invokeMethod('stopRecordScreen');
    return path;
  }
}
