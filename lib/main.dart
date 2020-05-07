import 'package:flutter/material.dart';

import 'transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Planner',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: "t1",
        title: "Logitech MX Master 2s",
        amount: 99.99,
        date: DateTime.now()),
    Transaction(
        id: "t2", title: "Macbook Pro", amount: 1299.00, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text("Expense Planner"),
          backgroundColor: Colors.amber[800],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Card(
                  child: Container(
                    child: Text("Chart", style: TextStyle(color: Colors.white)),
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
                  ),
                  elevation: 3,
                  color: Colors.deepOrange,
                  margin: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 15),
                ),
                width: double.infinity),
            Column(
              children: transactions.map((item) {
                return (Card(child: Text(item.title)));
              }).toList(),
            )
          ],
        )));
  }
}
