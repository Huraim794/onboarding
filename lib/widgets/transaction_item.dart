// lib/widgets/transaction_item.dart
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String title;
  final String amount;
  final IconData icon;
  final Color color;

  TransactionItem({
    required this.title,
    required this.amount,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.1),
            child: Icon(icon, color: color),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(title, style: TextStyle(fontSize: 18)),
          ),
          Text(
            amount,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
