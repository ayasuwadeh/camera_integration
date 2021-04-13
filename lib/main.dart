import 'package:flutter/material.dart';
import 'camera_page.dart';
class CameraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CameraPage(),
    );
  }
}

void main() => runApp(CameraApp());