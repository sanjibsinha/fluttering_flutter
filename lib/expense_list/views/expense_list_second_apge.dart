import 'package:flutter/material.dart';

class ExpenseListSecondPage extends StatefulWidget {
  ExpenseListSecondPage({Key? key}) : super(key: key);

  @override
  _ExpenseListSecondPageState createState() => _ExpenseListSecondPageState();
}

class _ExpenseListSecondPageState extends State<ExpenseListSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add your expenses',
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          IconButton(
              onPressed: () {
                return Navigator.pop(context);
              },
              icon: Icon(Icons.backpack)),
        ],
      ),
      body: SecondPageBody(),
    );
  }
}

class SecondPageBody extends StatelessWidget {
  const SecondPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('data'),
      ],
    );
  }
}
