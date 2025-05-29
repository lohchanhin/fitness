import 'package:flutter/material.dart';

import '../../models/meal.dart';
import '../../services/api_service.dart';

class DietTrackerScreen extends StatefulWidget {
  const DietTrackerScreen({Key? key}) : super(key: key);

  @override
  State<DietTrackerScreen> createState() => _DietTrackerScreenState();
}

class _DietTrackerScreenState extends State<DietTrackerScreen> {
  final ApiService _api = ApiService();
  final String _userId = 'demoUser';

  Future<void> _addMeal() async {
    final descriptionController = TextEditingController();
    final caloriesController = TextEditingController();

    final result = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('新增餐點'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: '描述'),
              ),
              TextField(
                controller: caloriesController,
                decoration: const InputDecoration(labelText: '卡路里'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('取消'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('新增'),
            ),
          ],
        );
      },
    );

    if (result == true) {
      final description = descriptionController.text;
      final calories = int.tryParse(caloriesController.text) ?? 0;
      final meal = Meal(id: '', description: description, calories: calories);
      await _api.addMeal(_userId, meal);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('飲食記錄')),
      body: StreamBuilder<List<Meal>>(
        stream: _api.streamMeals(_userId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final meals = snapshot.data ?? [];

          if (meals.isEmpty) {
            return const Center(child: Text('尚無紀錄'));
          }

          return ListView.builder(
            itemCount: meals.length,
            itemBuilder: (context, index) {
              final meal = meals[index];
              return ListTile(
                title: Text(meal.description),
                trailing: Text('${meal.calories} kcal'),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addMeal,
        child: const Icon(Icons.add),
      ),
    );
  }
}
