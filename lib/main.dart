import 'package:ai_assistant/app_theme/app_theme.dart';
import 'package:ai_assistant/home_screen/home_screen.dart';
import 'package:ai_assistant/onboarding_screen/onboarding_screen.dart';
import 'package:ai_assistant/pref/pref.dart';
import 'package:ai_assistant/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Pref.initalizeHive();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName:(context)=>SplashScreen(),
        OnboardingScreen.routeName:(context)=>OnboardingScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
      },
      initialRoute: SplashScreen.routeName,
      theme: AppTheme.appTheme,
    );
  }
}


