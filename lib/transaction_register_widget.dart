import 'package:flutter/material.dart';

class TransactionRegisterWidget extends StatelessWidget {
  TransactionRegisterWidget(this.addTransaction, {super.key});

  Function addTransaction;

  TextEditingController transactionDescription = TextEditingController();
  TextEditingController transactionValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: TextField(
              controller: transactionDescription,
              decoration: const InputDecoration(labelText: "Descrição"),
            )),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: TextField(
              controller: transactionValue,
              decoration: const InputDecoration(labelText: "Valor"),
              keyboardType: TextInputType.number,
            )),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ElevatedButton(
                onPressed: () {
                  addTransaction(transactionDescription.text,
                      double.parse(transactionValue.text));
                },
                child: const Text("Adicionar"))),
      ]),
    );
  }
}
