// lib/screens/onboarding_screen.dart
import 'package:flutter/material.dart';
import 'package:onboarding/screens/registration_screen.dart';
import 'package:onboarding/screens/sign_in_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<String> _imagePaths = [
    'lib/assets/images/home_screen.jpg.jpg', // Replace with your image paths
    'lib/assets/images/onboarding.jpg',

  ];

  int _currentIndex = 0;

  void _next() {
    if (_currentIndex < _imagePaths.length - 1) {
      setState(() {
        _currentIndex++;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RegistrationScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              _imagePaths[_currentIndex],
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: _next,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                _currentIndex < _imagePaths.length - 1 ? 'Next' : 'Get Started',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
