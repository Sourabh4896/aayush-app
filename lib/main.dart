import 'package:flutter/material.dart';
import 'package:flutter_camera/flutter_camera.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CameraScreen(),
    );
  }
}

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Camera"),
        backgroundColor: Colors.teal,
      ),
      body: FlutterCamera(
        color: Colors.black, // Background color for the camera preview
        onImageCaptured: (imagePath) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Image captured at: $imagePath"),
          ));
        },
      ),
    );
  }
}
