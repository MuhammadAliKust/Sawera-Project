import 'package:flutter/material.dart';
import 'package:sawera_project/dynamic_list_view.dart';
import 'package:sawera_project/grid_view.dart';
import 'package:sawera_project/page_view.dart';
import 'package:sawera_project/register.dart';
import 'package:sawera_project/screen_a.dart';
import 'package:sawera_project/single_selection_demo.dart';
import 'package:sawera_project/tabbar.dart';
import 'bottom_bar.dart';
import 'bottom_sheet.dart';
import 'dialog_box.dart';
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
      home: ScreenAView(),
    );
  }
}
