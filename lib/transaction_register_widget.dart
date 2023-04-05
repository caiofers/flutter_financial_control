import 'package:flutter/material.dart';

class TransactionRegisterWidget extends StatelessWidget {
  const TransactionRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        Padding(
            child: TextField(
              decoration: InputDecoration(labelText: "Descrição"),
            ),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10)),
        Padding(
            child: TextField(
              decoration: InputDecoration(labelText: "Valor"),
              keyboardType: TextInputType.number,
            ),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10)),
        Padding(
            child: ElevatedButton(onPressed: () {}, child: Text("Adicionar")),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10)),
      ]),
    );
  }
}
