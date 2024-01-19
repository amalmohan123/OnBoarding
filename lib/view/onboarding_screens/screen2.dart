import 'package:flutter/material.dart';

import 'package:log_ui/view/onboarding_screens/onbording_widgets/screen_main_text.dart';
import 'package:log_ui/view/onboarding_screens/onbording_widgets/skip_button.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

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
              textOne: 'Learn From Anytime',
              textTwo: 'Booked or Same the Lectures for Future',
            ),
          ],
        ),
      ),
    );
  }
}
