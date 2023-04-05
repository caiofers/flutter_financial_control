import 'package:flutter/material.dart';
import 'package:flutter_financial_control/financial_transactions_widget.dart';
import 'package:flutter_financial_control/transaction_register_widget.dart';
import 'package:flutter_financial_control/user_transactions.dart';

void main() {
  runApp(const FinancialControlApp());
}

class FinancialControlApp extends StatelessWidget {
  const FinancialControlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Controle Financeiro")),
        body: const UserTransactionsWidget());
  }
}
