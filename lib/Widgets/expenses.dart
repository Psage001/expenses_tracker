import 'package:expenses_tracker/Models/temp_expense.dart';
import 'package:flutter/material.dart';
import 'package:expenses_tracker/Widgets/expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          style: TextStyle(color: Color.fromARGB(255, 3, 3, 3)),'Flutter expense tracker'),
        backgroundColor: const Color.fromARGB(255, 5, 193, 80),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline_rounded, color: Color.fromARGB(255, 0, 0, 0),),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(240, 230, 255, 240),
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(
              child: ExpensesList(
                  expenses:
                      _registeredExpenses)), //Expanded expands the list if expanded is not there it will only show the chart text
        ],
      ),
    );
  }
}
