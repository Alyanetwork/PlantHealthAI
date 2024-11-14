// lib/screens/analysis_screen.dart

import 'package:flutter/material.dart';

class AnalysisScreen extends StatelessWidget {
  final String diseaseName;
  final List<String> recommendations;

  AnalysisScreen({required this.diseaseName, required this.recommendations});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analysis Result'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Detected Disease: $diseaseName", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Text("Recommendations:", style: TextStyle(fontSize: 18)),
            ...recommendations.map((rec) => Text("- $rec")).toList(),
          ],
        ),
      ),
    );
  }
}
