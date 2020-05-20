import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function onAdd;

  NewTransaction(this.onAdd);

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
                controller: nameFieldController),
            TextField(
              decoration:
                  InputDecoration(labelText: "Price", prefix: Text("\$ ")),
              controller: priceFieldController,
            ),
            RaisedButton(
              child: Text("Add Transaction"),
              textColor: Colors.white,
              color: Theme.of(context).primaryColor,
              onPressed: () {
                double amount = double.parse(priceFieldController.text);
                widget.onAdd(nameFieldController.text, amount);
                nameFieldController.clear();
                priceFieldController.clear();
              },
            )
          ],
        ),
      ),
    );
  }
}
