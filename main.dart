import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExpenseHome(),
    );
  }
}

class ExpenseHome extends StatefulWidget {
  @override
  _ExpenseHomeState createState() => _ExpenseHomeState();
}

class _ExpenseHomeState extends State<ExpenseHome> {
  int total = 0;

  void addOne() {
    setState(() {
      total = total + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Beulah Expense Tracker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total: ₹$total', style: TextStyle(fontSize: 32)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: addOne,
              child: Text('Add ₹1'),
            ),
          ],
        ),
      ),
    );
  }
}
