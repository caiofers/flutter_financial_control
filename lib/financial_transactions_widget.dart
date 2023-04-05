import 'package:flutter/material.dart';
import './model/financial_transaction.dart';
import 'package:intl/intl.dart';

class FinancialTransactionsWidget extends StatefulWidget {
  const FinancialTransactionsWidget({super.key});

  @override
  State<FinancialTransactionsWidget> createState() =>
      _FinancialTransactionsWidgetState();
}

class _FinancialTransactionsWidgetState
    extends State<FinancialTransactionsWidget> {
  List<FinancialTransaction> transactions = [
    FinancialTransaction("0", "Macbook Air M1", 6990.99, DateTime.now()),
    FinancialTransaction("1", "Moto Yamaha MT04", 30000, DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((transaction) {
      return Card(
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent, width: 1)),
              child: Text(
                "R\$ ${transaction.value.toStringAsFixed(2)}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
            ),
            Column(
              children: [
                Text(
                  transaction.description,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  DateFormat().format(transaction.date),
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                )
              ],
            )
          ],
        ),
      );
    }).toList());
  }
}
