import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomeContainer extends StatelessWidget {
  final String pathImage;
  final String text;
  final int count;

  HomeContainer({
    required this.pathImage,
    required this.text,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*1.5,
      height: MediaQuery.of(context).size.height*0.2,
      decoration: BoxDecoration(
        color: Color(0xb8b9d3ff),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (count % 2 == 0) ...[
            Lottie.asset(pathImage,
            width: MediaQuery.of(context).size.width*0.5),
            Text(
              text,
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.titleMedium ??
                    TextStyle(fontSize: 16),
              ),
            ),
          ] else ...[
            Text(
              text,
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.titleMedium ??
                    TextStyle(fontSize: 16),
              ),
            ),
            Lottie.asset(pathImage),
          ],
        ],
      ),
    );
  }
}
