import 'package:flutter/material.dart';

class CreateWorkoutScreen extends StatefulWidget {
  const CreateWorkoutScreen({Key? key}) : super(key: key);

  @override
  State<CreateWorkoutScreen> createState() => _CreateWorkoutScreenState();
}

class _CreateWorkoutScreenState extends State<CreateWorkoutScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _durationController = TextEditingController();

  void _submit() {
    final name = _nameController.text.trim();
    final duration = int.tryParse(_durationController.text) ?? 0;
    if (name.isEmpty || duration <= 0) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('訓練已建立：$name ($duration 分鐘)')),
    );
    _nameController.clear();
    _durationController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('建立訓練')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: '訓練名稱'),
            ),
            TextField(
              controller: _durationController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: '分鐘數'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submit,
              child: const Text('儲存'),
            ),
          ],
        ),
      ),
    );
  }
}
