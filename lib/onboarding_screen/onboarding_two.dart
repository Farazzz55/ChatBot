import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('assets/lottie/getStarted.json'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            'Imagination to reality',
            style: GoogleFonts.inter(
              textStyle: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            'Just imagine anything and let me know , I will create something wonderful for you! ',
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
