// lib/screens/plant_care_screen.dart

import 'package:flutter/material.dart';

class PlantCareScreen extends StatelessWidget {
  final List<String> careInstructions;

  PlantCareScreen({required this.careInstructions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Care Instructions'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Care Instructions:", style: TextStyle(fontSize: 18)),
            ...careInstructions.map((inst) => Text("- $inst")).toList(),
          ],
        ),
      ),
    );
  }
}
