import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/wallet_screen.dart';
import 'screens/transaction_history_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/registration_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fintech Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/wallet': (context) => WalletScreen(),
        '/transactions': (context) => TransactionHistoryScreen(),
        '/profile': (context) => ProfileScreen(),
        '/signin': (context) => SignInScreen(),
        '/register': (context) => RegistrationScreen(),
      },
    );
  }
}
