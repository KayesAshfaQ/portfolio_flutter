import 'package:flutter/foundation.dart';

void printLog(String message) {
  if (kDebugMode) {
    print(message);
  }
}
