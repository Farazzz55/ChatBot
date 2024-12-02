import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('assets/lottie/chatWithMe.json'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            'Ask me anything',
            style: GoogleFonts.inter(
              textStyle: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            'I can be your best friend, You can ask me anything and I will help you!',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.grey,
                  letterSpacing: 2
              ),
            ),
          ),
        ],
      ),
    );
  }
}
