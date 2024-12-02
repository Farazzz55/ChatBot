import 'package:ai_assistant/home_screen/home_screen.dart';
import 'package:ai_assistant/onboarding_screen/onboarding_screen.dart';
import 'package:ai_assistant/pref/pref.dart';
import 'package:ai_assistant/widget/custom_loading.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = 'splashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 7), () {
        Navigator.of(context).pushReplacementNamed(
            Pref.ShowOnBoarding?
            OnboardingScreen.routeName:
        HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  'assets/images/app_logo.png',
                  width: size.width * 0.4,
                ),
              ),
              const SizedBox(height: 20),
              // Custom loading widget
              const CustomLoading(),
            ],
          ),
        ),
      ),
    );
  }
}
