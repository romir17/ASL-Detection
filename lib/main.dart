import 'dart:async';
import 'package:FlutterMobilenet/home_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();

  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF424242),
      ),
      theme: ThemeData.dark(),
      home: HomeScreen(
        // Pass the appropriate camera to the TakePictureScreen widget.
        camera: firstCamera,
      ),
    ),
  );
}
