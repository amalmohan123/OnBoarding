import 'package:flutter/material.dart';
import 'package:log_ui/view/onboarding_screens/onbording_widgets/screen_main_text.dart';


import 'package:log_ui/view/onboarding_screens/onbording_widgets/skip_button.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Align(
              alignment: Alignment.bottomRight,
              child: SkipButton(),
            ),
            SizedBox(height: 350),
            ScreenMainText(
              textOne: 'Get Online Certificate',
              textTwo: 'Analyse your score and track your result',
            ),
          ],
        ),
      ),
    );
  }
}
