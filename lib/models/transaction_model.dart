// lib/screens/transaction_history_screen.dart
import 'package:flutter/material.dart';
import 'package:onboarding/widgets/transaction_item.dart';

class TransactionHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History'),
        backgroundColor: Color(0xFF1A73E8),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          TransactionItem(
            title: 'Spending',
            amount: '-\$500',
            icon: Icons.money_off,
            color: Colors.red,
          ),
          TransactionItem(
            title: 'Income',
            amount: '\$3000',
            icon: Icons.attach_money,
            color: Colors.green,
          ),
          TransactionItem(
            title: 'Bills',
            amount: '-\$800',
            icon: Icons.receipt,
            color: Colors.red,
          ),
          TransactionItem(
            title: 'Savings',
            amount: '\$1000',
            icon: Icons.savings,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
