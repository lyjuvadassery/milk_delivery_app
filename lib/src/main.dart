import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:milk_delivery_app/src/presentation/sign_up_page.dart';
import 'package:get/get.dart';
import 'package:milk_delivery_app/src/presentation/test_code.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignUpPage(),
    );
  }
}
