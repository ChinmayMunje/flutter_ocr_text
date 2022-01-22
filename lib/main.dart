import 'package:flutter/material.dart';

import 'face_app.dart';
import 'not-uploaded-videos/ocr_text.dart';
import 'not-uploaded-videos/painter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Detector Application',
      debugShowCheckedModeBanner: false,
      home: ExamplePage(),
    );
  }
}