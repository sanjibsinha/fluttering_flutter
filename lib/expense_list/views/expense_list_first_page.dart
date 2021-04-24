import 'package:flutter/material.dart';

import 'expense_list_second_apge.dart';

class ExpenseListFirstPage extends StatelessWidget {
  const ExpenseListFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense List First Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Add your expenses',
            onPressed: () {
              // handle the press
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExpenseListSecondPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
