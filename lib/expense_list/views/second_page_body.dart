import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../controllers/display_expenses_list.dart';
import '../models/expense_list.dart';
import '../controllers/about_expense_widget.dart';

class SecondPageBody extends StatefulWidget {
  const SecondPageBody({Key? key}) : super(key: key);

  @override
  _SecondPageBodyState createState() => _SecondPageBodyState();
}

class _SecondPageBodyState extends State<SecondPageBody> {
  final List<ExpenseList> expense = [];

  String? get name => null;

  double? get amount => null;
  void addExpenses(String name, double amount) {
    final expenses = ExpenseList(
      id: DateTime.now().toString(),
      name: name,
      amount: amount,
    );
    setState(() {
      expense.add(expenses);
    });
  }

  final nameController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AboutExpenseWidget(),
        Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white38,
              width: 5,
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(3.0, 3.0),
                blurRadius: 5.0,
                spreadRadius: 2.0,
              ),
            ],
          ),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Type name of expense',
                ),
              ),
              TextField(
                controller: amountController,
                decoration: InputDecoration(
                  labelText: 'Type name of expense',
                ),
              ),
              TextButton(
                onPressed: () {
                  addExpenses(
                    nameController.text,
                    double.parse(amountController.text),
                  );
                },
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        DisplayExpenses(expense: expense),
      ],
    );
  }
}
