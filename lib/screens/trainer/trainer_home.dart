import 'package:flutter/material.dart';
import 'create_workout.dart';
import 'manage_students.dart';

class TrainerHomeScreen extends StatefulWidget {
  const TrainerHomeScreen({Key? key}) : super(key: key);

  @override
  State<TrainerHomeScreen> createState() => _TrainerHomeScreenState();
}

class _TrainerHomeScreenState extends State<TrainerHomeScreen> {
  int _index = 0;
  final List<Widget> _screens = const [
    ManageStudentsScreen(),
    CreateWorkoutScreen(),
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
            icon: Icon(Icons.people),
            label: '學員管理',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: '建立訓練',
          ),
        ],
      ),
    );
  }
}
