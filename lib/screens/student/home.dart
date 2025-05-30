import 'package:flutter/material.dart';

import 'diet_tracker.dart';
import 'workout_plan.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Home')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Diet Tracker'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DietTrackerScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Workout Plan'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const WorkoutPlanScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
