import 'package:flutter/material.dart';
import 'login.dart';
import 'network_image.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    home: LoginView(),
    );
  }
}
