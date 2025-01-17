// lib/main.dart

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(PlantHealthApp());
}

class PlantHealthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Health AI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}
