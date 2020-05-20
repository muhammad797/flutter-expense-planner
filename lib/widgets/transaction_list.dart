import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> transactions = [
    Transaction(
        id: "1", title: "Macbook Air", amount: 99.99, date: DateTime.now()),
    Transaction(
        id: "2", title: "Macbook Pro", amount: 59.99, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((item) {
        return (Card(
          child: Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text('\$${item.amount}',
                        style: TextStyle(color: Colors.purple)),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2)),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    margin: EdgeInsets.only(right: 10),
                  ),
                  Column(
                    children: <Widget>[
                      Text(item.title,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(DateFormat.yMMMd().format(item.date),
                          style: TextStyle(color: Colors.grey)),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  )
                ],
              ),
              padding: EdgeInsets.all(10)),
          elevation: 3,
          margin: EdgeInsets.only(bottom: 10),
        ));
      }).toList(),
    );
  }
}
