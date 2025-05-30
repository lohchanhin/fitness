import 'package:flutter/material.dart';

class DietTrackerScreen extends StatelessWidget {
  const DietTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diet Tracker')),
      body: const Center(child: Text('Diet tracker screen')),
    );
  }
}
