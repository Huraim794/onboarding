// lib/screens/wallet_screen.dart
import 'package:flutter/material.dart';
import 'package:onboarding/widgets/balance_card.dart';
import 'package:onboarding/widgets/transaction_item.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
        backgroundColor: Color(0xFF1A73E8),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            BalanceCard(balance: 20000, currency: 'USD'),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add Money'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1A73E8),
                foregroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
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

          ],
        ),
      ),
    );
  }
}
