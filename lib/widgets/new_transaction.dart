import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final nameFieldController = TextEditingController();
  final priceFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.only(bottom: 15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
                decoration: InputDecoration(labelText: "Product name"),
                controller: nameFieldController
            ),
            TextField(
              decoration: InputDecoration(labelText: "Price"),
              controller: priceFieldController,
            ),
            FlatButton(
              child: Text("Add Transaction"),
              textColor: Colors.purple,
              onPressed: () {
                print(
                    nameFieldController.text + " " + priceFieldController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}