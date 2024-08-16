// lib/widgets/custom_widgets.dart
import 'package:flutter/material.dart';

Widget customButton({required String text, required VoidCallback onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(text),
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
}
