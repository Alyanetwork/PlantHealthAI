// lib/screens/history_screen.dart

import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analysis History'),
      ),
      body: Center(
        child: Text("No history available."),
      ),
    );
  }
}
