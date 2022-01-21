import 'package:flutter/material.dart';

import 'face_app.dart';
import 'not-uploaded-videos/ocr_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Detector Application',
      debugShowCheckedModeBanner: false,
      home: OcrText(),
    );
  }
}
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   List<String> itemsList = [
//     'Text Scanner',
//     'Barcode Scanner',
//     'Label Scanner',
//     'Face Detection'
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ML Kit Demo'),
//       ),
//       body: ListView.builder(
//           itemCount: itemsList.length,
//           itemBuilder: (context, index) {
//             return Card(
//               child: ListTile(
//                 title: Text(itemsList[index]),
//                 onTap: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(
//                   //     builder: (context) => FaceRecogPage(),
//                   //     settings: RouteSettings(arguments: itemsList[index]),
//                   //   ),
//                   // );
//                 },
//               ),
//             );
//           }),
//     );
//   }
// }
