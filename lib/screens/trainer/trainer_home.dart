import 'package:flutter/material.dart';

class TrainerHomeScreen extends StatelessWidget {
  const TrainerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trainer Home')),
      body: const Center(child: Text('Welcome, trainer!')),
    );
  }
}
