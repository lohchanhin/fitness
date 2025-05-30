import 'package:flutter/material.dart';

class DietTrackerScreen extends StatelessWidget {
  const DietTrackerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('飲食記錄')),
      body: const Center(child: Text('Diet Tracker Placeholder')),
    );
  }
}
