import 'package:flutter/material.dart';
import 'package:sawera_project/single_selection_demo.dart';
import 'list_view_demo.dart';
import 'login.dart';
import 'multiple_selection_demo.dart';
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
    home: MultipleSelectionDemo(),
    );
  }
}
