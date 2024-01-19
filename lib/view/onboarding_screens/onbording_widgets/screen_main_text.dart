import 'package:flutter/material.dart';

class ScreenMainText extends StatelessWidget {
  const ScreenMainText({
    super.key,
    required this.textOne,
    required this.textTwo,
  });

  final String textOne;
  final String textTwo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textOne,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2),
        ),
        const SizedBox(height: 10),
        Text(
          textTwo,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade900,
            fontSize: 14,
            wordSpacing: 1,
          ),
        ),
      ],
    );
  }
}
