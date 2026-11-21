import 'package:eventhub/views/roleSelectionScreen.dart';
import 'package:eventhub/views/splash.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Event Hub',
      theme: ThemeData(
      ),
      home: Roleselection(),
    );
  }
}

