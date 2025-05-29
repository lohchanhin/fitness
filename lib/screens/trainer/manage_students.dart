import 'package:flutter/material.dart';

class ManageStudentsScreen extends StatelessWidget {
  const ManageStudentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('學員管理')),
      body: const Center(child: Text('Manage Students Placeholder')),
    );
  }
}
