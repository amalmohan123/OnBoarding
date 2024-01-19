import 'package:flutter/material.dart';
import 'package:log_ui/view/onboarding_screens/onboarding_screen.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
    onBoardController.jumpToPage(2);
      },
      child: const Text(
        'Skip',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
