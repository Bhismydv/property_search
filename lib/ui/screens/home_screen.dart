import 'package:flutter/material.dart';
import 'package:property_search/styles/colors.dart';
import 'package:property_search/ui/widgets/HomeAppBar.dart';
import 'package:property_search/ui/widgets/app_searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(iconVisible: true),
      body: Column(
        children: const [
          AppSearchBar(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.secondaryTextColor,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'Setting'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Profile'),
          ]),
    );
  }
}
