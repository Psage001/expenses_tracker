import 'package:flutter/material.dart';
import 'package:expenses_tracker/Widgets/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Expenses(),
    ),
  );
}
