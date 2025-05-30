import 'package:flutter/material.dart';

import 'create_workout.dart';
import 'manage_students.dart';

class TrainerHomeScreen extends StatelessWidget {
  const TrainerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trainer Home')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Create Workout'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CreateWorkoutScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Manage Students'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ManageStudentsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
