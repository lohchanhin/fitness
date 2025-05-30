import 'package:flutter/material.dart';

class ProgressChart extends StatelessWidget {
  final double value;
  const ProgressChart({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(value: value);
  }
}
