import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/student/student_home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Insight',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const StudentHomeScreen(),
    );
  }
}
