import 'package:ai_assistant/pref/pref.dart';
import 'package:ai_assistant/widget/home_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routeName='homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Pref.ShowOnBoarding=false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI Assistant' , style: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.titleLarge
        ),),
        actions: [
          Lottie.asset('assets/lottie/bot.json')
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          HomeContainer(pathImage:'assets/lottie/chatWithMe.json' , text: 'AI ChatBot', count: 0),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          HomeContainer(pathImage:'assets/lottie/image_creator.json' , text: 'AI Image Creator', count: 1),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          HomeContainer(pathImage:'assets/lottie/trans.json' , text: 'Language Translator', count: 2),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        ],
      ),
    );
  }
}
