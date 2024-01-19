import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({
    super.key,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.buttonShape,
    required this.buttonText,
  });

  final double buttonWidth;
  final double buttonHeight;
  final BoxShape buttonShape;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          shape: buttonShape,
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 173, 210, 244),
              Color.fromARGB(255, 37, 7, 146)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonText != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        buttonText!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  )
                : const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
