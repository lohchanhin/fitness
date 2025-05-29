import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/meal.dart';

class ApiService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Meal>> streamMeals(String userId) {
    return _db
        .collection('users')
        .doc(userId)
        .collection('meals')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Meal(
                  id: doc.id,
                  description: doc['description'] as String,
                  calories: doc['calories'] as int,
                ))
            .toList());
  }

  Future<void> addMeal(String userId, Meal meal) async {
    await _db.collection('users').doc(userId).collection('meals').add({
      'description': meal.description,
      'calories': meal.calories,
    });
  }
}
