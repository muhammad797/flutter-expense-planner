import 'package:expenseplanner/widgets/new_transaction.dart';
import 'package:expenseplanner/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import './widgets/transactions_chart.dart';
import './models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Planner',
      home: MyHomePage(),
      theme: ThemeData(
          primarySwatch: Colors.deepOrange, accentColor: Colors.amber),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transactions = [
    Transaction(
        id: "1", title: "Macbook Air", amount: 99.99, date: DateTime.now()),
    Transaction(
        id: "2", title: "Macbook Pro", amount: 59.99, date: DateTime.now()),
  ];

  void addNewTransaction(String name, double amount) {
    Transaction t = Transaction(
        id: DateTime.now().toString(),
        title: name,
        amount: amount,
        date: DateTime.now());
    setState(() {
      transactions.add(t);
    });
  }

  void startTransactionAdd(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (BuildContext context) => NewTransaction(addNewTransaction));
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text("Expense Planner"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => startTransactionAdd(context),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () => startTransactionAdd(context),
          child: Icon(Icons.add),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TransactionsChart(),
              TransactionList(transactions)
            ],
          ),
        )));
  }
}
