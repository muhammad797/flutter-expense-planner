import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
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
        date: DateTime.now()
    );
    setState(() {
      transactions.add(t);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        NewTransaction(addNewTransaction),
        TransactionList(transactions)
      ],
    );
  }
}
