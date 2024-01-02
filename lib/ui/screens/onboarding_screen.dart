import 'package:flutter/material.dart';
import 'package:property_search/styles/colors.dart';
import 'package:property_search/ui/screens/home_screen.dart';
import 'package:property_search/ui/widgets/HomeAppBar.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(iconVisible: false),
      body: SingleChildScrollView(
        child: Container(
          width: w,
          height: h,
          padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Looking ',
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                  children: [
                    TextSpan(
                      text: 'for an \n',
                      style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          height: 1.5),
                    ),
                    TextSpan(
                      text: 'elegant house this is the place',
                      style: TextStyle(
                          color: AppColors.primaryTextColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          height: 1.5),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text('Welcome friends are you looking for us?',
                  style: TextStyle(
                    color: AppColors.secondaryTextColor,
                  )),
              const SizedBox(
                height: 12,
              ),
              Text('Congratulations you have found us',
                  style: TextStyle(
                    color: AppColors.secondaryTextColor,
                  )),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.primaryColor)),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  icon: Icon(Icons.arrow_forward),
                  label: Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                height: 20,
              ),
              Spacer(),
              Image.asset(
                "assets/home_dec.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
