import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:log_ui/controller/onboard_provider.dart';
import 'package:log_ui/view/home.dart';
import 'package:log_ui/view/onboarding_screens/onboarding_screen.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnboardigProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            background: const Color.fromARGB(255, 226, 238, 255),
          ),
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => const OnBoardingScreen(),
          "/MyHomePage": (context) => const MyHomePage(title: 'Home Page')
        },
      ),
    );
  }
}
