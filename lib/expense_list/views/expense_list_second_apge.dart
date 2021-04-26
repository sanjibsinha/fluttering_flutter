import 'package:flutter/material.dart';

import 'second_page_body.dart';

class ExpenseListSecondPage extends StatelessWidget {
  ExpenseListSecondPage({Key? key}) : super(key: key);

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
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: SecondPageBody(),
    );
  }
}
