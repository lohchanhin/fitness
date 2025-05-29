import 'package:flutter/material.dart';

class ProgressChart extends StatelessWidget {
  final double progress;
  const ProgressChart({Key? key, required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Center(child: Text('Progress: ${progress.toStringAsFixed(1)}%')),
    );
  }
}
