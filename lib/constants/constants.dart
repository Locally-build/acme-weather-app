import 'dart:io';

import 'package:flutter/foundation.dart';

mixin Constants {
  static const String port = '5500';
  static const String appTitle = 'Acme Weather Demo';
  static const List<String> icons = [
    '01d',
    '01n',
    '02d',
    '02n',
    '03d',
    '03n',
    '04d',
    '04n',
    '09d',
    '09n',
    '10d',
    '10n',
    '11d',
    '11n',
    '13d',
    '13n',
    '50d',
    '50n'
  ];

  static get baseUrl {
    var baseUrl = "";
    if (kDebugMode) {
      if (kIsWeb) {
        baseUrl = 'http://192.168.4.148:$port';
      } else {
        if (Platform.isAndroid) {
          baseUrl = 'http://10.0.2.2:$port';
        } else if (Platform.isIOS) {
          baseUrl = 'http://192.168.4.148:$port';
        } else if (Platform.isMacOS) {
          baseUrl = 'http://192.168.4.148:$port';
        } else if (Platform.isWindows) {
          baseUrl = 'http://192.168.4.148:$port';
        } else if (Platform.isLinux) {
          baseUrl = 'http://192.168.4.148:$port';
        } else {
          baseUrl = 'http://localhost:$port';
        }
      }
    } else {
      baseUrl = 'http://api.parallels-demo.com';
    }

    return baseUrl;
  }

  static get iconBaseUrl {
    var os = "";
    if (kIsWeb) {
      os = "web";
    } else {
      if (Platform.isAndroid) {
        os = "android";
      } else if (Platform.isIOS) {
        os = "ios";
      } else if (Platform.isMacOS) {
        os = "macos";
      } else if (Platform.isWindows) {
        os = "windows";
      } else if (Platform.isLinux) {
        os = "ubuntu";
      } else {
        os = "unknown";
      }
    }

    return '$baseUrl/icon/$os';
  }
}
