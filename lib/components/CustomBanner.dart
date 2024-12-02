import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  final String title;
  const CustomBanner({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 191, 155, 48),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1, // Reduced spreadRadius to limit shadow spread
            blurRadius: 7,
            offset: Offset(0, 7), // Vertical offset to move shadow to the bottom
          ),
        ],
      ),
      child: Padding( // Add padding for better text visibility
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

