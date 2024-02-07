import 'package:flutter/material.dart';
import 'package:medcab_task/pages/dashboardscreen.dart';
import 'package:medcab_task/pages/splashscreen.dart';
import 'package:material_icons_named/material_icons_named.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MedCab Task',
      home:SplashScreen(),
    );
  }
}
