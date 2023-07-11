import 'dart:io';

import 'package:image/image.dart' as img;
import 'package:image_compare/image_compare.dart';

main(List<String> args) async {
  print("Hello World");
  final file1 = File('1.png').readAsBytesSync();
  final file2 = File('2.png').readAsBytesSync();
  CompareResult result = await compareImages(
      src1: file1,
      src2: file2,
      algorithm: PixelMatching(ignoreAlpha: true, tolerance: 0.0));
  print(result.diffPercent);
  print(file1.length);
  print(result.diffImage.length);
  img.Image source = img.decodeImage(file1)!;
  final file = File('diff-d.png');
  await file.writeAsBytes(img.encodePng(
      img.Image.fromBytes(source.width, source.height, result.diffImage)));
}
