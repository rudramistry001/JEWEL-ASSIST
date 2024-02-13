import 'package:flutter/material.dart';

class CustomElevatedButtonWithIcon extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomElevatedButtonWithIcon({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(218, 130, 7, 1),
            Color.fromRGBO(221, 147, 24, 1),
            Color.fromRGBO(255, 203, 60, 1),
            Color.fromRGBO(255, 203, 60, 1),
            Color.fromRGBO(227, 156, 30, 1),
            Color.fromRGBO(251, 198, 58, 1),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.login), // Prefix icon
        label: const Text('Login'), // Button text
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent, // Make button transparent
          elevation: 0, // Remove elevation
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 8), // Text color
        ),
      ),
    );
  }
}
