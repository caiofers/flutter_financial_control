import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './model/financial_transaction.dart';

class FinancialTransactionsWidget extends StatelessWidget {
  FinancialTransactionsWidget(this.transactions, this.deleteTransaction,
      {super.key});
  Function deleteTransaction;
  final List<FinancialTransaction> transactions;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: ListView(
            children: transactions.map((transaction) {
          return Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                ),
                IconButton(
                    onPressed: () {
                      deleteTransaction(transaction.id);
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ))
              ],
            ),
          );
        }).toList()));
  }
}
