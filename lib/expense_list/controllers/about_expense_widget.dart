import 'package:flutter/material.dart';

class AboutExpenseWidget extends StatelessWidget {
  const AboutExpenseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white12,
        border: Border.all(
          color: Colors.lightBlueAccent,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        'Type name and amount of your expenses.',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
