import 'package:ai_assistant/home_screen/home_screen.dart';
import 'package:ai_assistant/onboarding_screen/onboarding_one.dart';
import 'package:ai_assistant/onboarding_screen/onboarding_two.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  static String routeName = 'onBoardingScreen';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Widget> pages = [OnboardingOne(), OnboardingTwo()];
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: pages.length,
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) => pages[index],
                  ),
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: pages.length,
                  effect: JumpingDotEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey,
                    jumpScale: 2,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.01),
                ElevatedButton(
                  onPressed: () {
                    if (currentPage < pages.length - 1) {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                    }
                  },
                  child: Text(
                    currentPage == pages.length - 1 ? 'Get Started' : 'Next',
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    minimumSize: Size(MediaQuery.of(context).size.width*0.4, MediaQuery.of(context).size.height*0.05),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
