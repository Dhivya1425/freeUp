import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_up/Utils/CustomWidgets/CustomText.dart';
import 'package:free_up/Utils/Language/EnglishLanguage.dart';

import '../../Common/CommonLoginBottomSheet/View/CommonLoginBottomSheetView.dart';

class CustomBottomNavigation extends StatefulWidget {
  double bottomAppBarHeight = 100;
   CustomBottomNavigation({Key? key,required this.bottomAppBarHeight}) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 5,
      height:widget.bottomAppBarHeight,
      clipBehavior: Clip.hardEdge,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          textWithIcon(englishLanguage.home, Icons.home_outlined),
          textWithIcon(englishLanguage.following, Icons.people_outline),
          textWithIcon(englishLanguage.inbox, Icons.forward_to_inbox_rounded),
          textWithIcon(englishLanguage.profile, Icons.manage_accounts_outlined),
        ],
      ),
    );
  }

  textWithIcon(
    String text,
    IconData icon,
  ) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CommonBottomSheetView()),
            );
          },
        ),
        CustomText(
          text: text,
        ),
      ],
    );
  }
}
