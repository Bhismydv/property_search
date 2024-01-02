import 'package:flutter/material.dart';
import 'package:property_search/styles/colors.dart';

class AppSearchBar extends StatefulWidget {
  static TextEditingController searchController =
      TextEditingController(text: '');
  const AppSearchBar({super.key});

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: AppColors.secondaryTextColor.withOpacity(.2),
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                    controller: AppSearchBar.searchController,
                    decoration: InputDecoration(
                      hintText: 'Search here...',
                      border: InputBorder.none,
                    ),
                  )),
                  InkWell(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
