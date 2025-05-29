import 'package:flutter/material.dart';
import '../../models/user.dart';

class ManageStudentsScreen extends StatefulWidget {
  const ManageStudentsScreen({Key? key}) : super(key: key);

  @override
  State<ManageStudentsScreen> createState() => _ManageStudentsScreenState();
}

class _ManageStudentsScreenState extends State<ManageStudentsScreen> {
  final List<User> _students = [
    User(id: '1', name: 'Alex'),
    User(id: '2', name: 'Bella'),
  ];
  final TextEditingController _controller = TextEditingController();

  void _addStudent() {
    final name = _controller.text.trim();
    if (name.isEmpty) return;
    setState(() {
      _students.add(User(id: DateTime.now().toIso8601String(), name: name));
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('學員管理')),
      body: ListView.builder(
        itemCount: _students.length,
        itemBuilder: (context, index) {
          final user = _students[index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(user.name),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('新增學員'),
                content: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(labelText: '姓名'),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('取消'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _addStudent();
                      Navigator.pop(context);
                    },
                    child: const Text('新增'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
