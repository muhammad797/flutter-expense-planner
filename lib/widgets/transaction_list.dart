import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transactions;

  TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _transactions.map((item) {
        return (Card(
          child: Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text('\$${item.amount.toStringAsFixed(2)}',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 2)),
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
