import 'package:flutter/material.dart';

import 'diet_tracker.dart';
import 'workout_plan.dart';

class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({Key? key}) : super(key: key);

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  int _index = 0;

  final _screens = const [
    DietTrackerScreen(),
    WorkoutPlanScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: '飲食',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: '運動',
          ),
        ],
      ),
    );
  }
}
