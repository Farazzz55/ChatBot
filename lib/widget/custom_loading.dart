import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/lottie/Animation - 1733157177544.json',
    width: MediaQuery.of(context).size.width*0.2);
  }
}
