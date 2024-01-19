import 'package:flutter/material.dart';
import 'package:log_ui/controller/onboard_provider.dart';
import 'package:log_ui/view/onboarding_screens/onbording_widgets/arrow_button.dart';
import 'package:log_ui/view/onboarding_screens/screen1.dart';
import 'package:log_ui/view/onboarding_screens/screen2.dart';
import 'package:log_ui/view/onboarding_screens/screen3.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final PageController onBoardController = PageController();

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardScreenProvider = Provider.of<OnboardigProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: onBoardController,
            onPageChanged: (index) {
              onBoardScreenProvider.onLastPageArrowButton(index);
            },
            children: const [
              ScreenOne(),
              ScreenTwo(),
              ScreenThree(),
            ],
          ),
          Container(
            alignment: const Alignment(-0.6, 0.83),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmoothPageIndicator(controller: onBoardController, count: 3),
                const SizedBox(width: 1),
                onBoardScreenProvider.onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, "/MyHomePage");
                        },
                        child: const ArrowButton(
                          buttonWidth: 150,
                          buttonHeight: 60,
                          buttonText: 'Get Started',
                          buttonShape: BoxShape.rectangle,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          onBoardController.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        child: const ArrowButton(
                          buttonWidth: 63,
                          buttonHeight: 60,
                          buttonText: null,
                          buttonShape: BoxShape.rectangle,
                        ),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
