import 'package:flutter/material.dart';
import 'package:property_search/styles/colors.dart';
import 'package:property_search/ui/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/home_section.png",
            width: 220,
          ),
          RichText(
            text: TextSpan(
                text: 'Home',
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'Section',
                    style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
