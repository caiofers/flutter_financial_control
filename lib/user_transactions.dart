import "package:flutter/material.dart";
import './model/financial_transaction.dart';
import 'package:flutter_financial_control/financial_transactions_widget.dart';
import 'package:flutter_financial_control/transaction_register_widget.dart';

class UserTransactionsWidget extends StatefulWidget {
  const UserTransactionsWidget({super.key});

  @override
  State<UserTransactionsWidget> createState() => _UserTransactionsWidgetState();
}

class _UserTransactionsWidgetState extends State<UserTransactionsWidget> {
  List<FinancialTransaction> transactions = [];

  void addTransactions(String description, double value) {
    final newTransaction = FinancialTransaction(
        DateTime.now().toString(), description, value, DateTime.now());

    setState(() {
      transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TransactionRegisterWidget(addTransactions),
        FinancialTransactionsWidget(transactions)
      ],
    );
  }
}
