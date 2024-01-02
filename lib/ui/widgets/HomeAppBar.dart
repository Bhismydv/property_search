import 'package:flutter/material.dart';
import 'package:property_search/styles/colors.dart';

AppBar buildAppBar({required bool iconVisible}) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
    elevation: 0,
    title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Image.asset(
        "assets/home_section.png",
        width: 50,
      ),
      RichText(
        text: TextSpan(
          text: 'Home',
          style: TextStyle(
              color: AppColors.primaryColor, fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: 'Section',
              style: TextStyle(
                  color: AppColors.secondaryColor, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    ]),
    actions: [
      Visibility(
          visible: iconVisible,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: AppColors.primaryTextColor,
              )))
    ],
  );
}
