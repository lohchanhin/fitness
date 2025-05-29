import 'package:flutter/material.dart';

class CreateWorkoutScreen extends StatelessWidget {
  const CreateWorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('建立訓練')),
      body: const Center(child: Text('Create Workout Placeholder')),
    );
  }
}
