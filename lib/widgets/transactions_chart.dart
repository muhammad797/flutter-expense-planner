import 'package:flutter/material.dart';

class TransactionsChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
          child: Container(
            child: Text("Chart", style: TextStyle(color: Colors.white)),
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
          ),
          elevation: 3,
          color: Colors.deepOrange,
          margin: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 15),
        ),
        width: double.infinity);
  }
}
