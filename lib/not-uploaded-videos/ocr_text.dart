import 'package:flutter/material.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';

class OcrText extends StatefulWidget {
  const OcrText({Key? key}) : super(key: key);

  @override
  _OcrTextState createState() => _OcrTextState();
}

class _OcrTextState extends State<OcrText> {
  final int _cameraOcr = FlutterMobileVision.CAMERA_BACK;

  Future<void> _read() async {
    List<OcrText> texts = [];

    try {
      texts = (await FlutterMobileVision.read(
        multiple: true,
        camera: _cameraOcr,
        waitTap: true,
      ))
          .cast<OcrText>();
    } catch (e) {
      print("Error is $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff10223d),
      appBar: AppBar(
        backgroundColor: const Color(0xff10223d),
        elevation: 0,
        title: const Text(
          "Text Detector",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to Text Detector",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => _read(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.camera,
                    size: 40,
                    color: Colors.white,
                  ),
                  Text(
                    "Scan",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
