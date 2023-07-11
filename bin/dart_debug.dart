import 'dart:async';

import 'package:dart_debug/dart_debug.dart' as dart_debug;

void main(List<String> arguments) {
  var a = 1;
  var b = 2;
  print('Hello world: ${dart_debug.calculate()}!');
  Timer(Duration(seconds: 1), () {
    print('Hello world: ${dart_debug.calculate()}!');
  });
}
