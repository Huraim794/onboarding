// lib/widgets/balance_card.dart
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final double balance;
  final String currency;

  BalanceCard({required this.balance, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF1A73E8),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Balance', style: TextStyle(color: Colors.white)),
          SizedBox(height: 10),
          Text('$currency $balance',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
