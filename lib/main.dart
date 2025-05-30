import 'package:flutter/material.dart';
import 'screens/trainer/trainer_home.dart';

void main() {
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Insight',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TrainerHomeScreen(),
    );
  }
}
