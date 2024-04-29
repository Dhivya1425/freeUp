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
              MaterialPageRoute(builder: (context) => showPinBottomSheet(context) ()),
            );
          },
        ),
        CustomText(
          text: text,
        ),
      ],
    );
  }

showPinBottomSheet(BuildContext context) async {
  final result = await Navigator.of(context).push(CommonBottomSheetView(context,
  ));
}
}

/*class CustomBottomNavigationBar extends StatefulWidget {
  final List icon;
  final List label;
  final double heigth;
  final Color color;
  final Color backgroundColor;
  final BoxFit fit;
  final ValueChanged<int>? onTabSelected;
  final dynamic? commonViewModel;

  CustomBottomNavigationBar(
      {Key? key,
      required this.icon,
      required this.label,
      required this.heigth,
      required this.color,
      required this.backgroundColor,
      this.onTabSelected,
      this.commonViewModel,
      required this.fit})
      : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  BottomNavigationBarItem buildBottomNavBarItems(String icon, String label) {
    Image imageActive = Image.asset(
      icon,
      height: widget.heigth + 5,
      fit: BoxFit.fill,
    );
    Image image = Image.asset(
      icon,
      height: widget.heigth + 5,
      fit: BoxFit.fill,
      opacity: const AlwaysStoppedAnimation(.3),
    );

    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.all(0),
        child: image,
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.all(0),
        child: imageActive,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    _updateIndex(int index) {
      widget.onTabSelected!(index);
    }

    buildItems() {
      List<BottomNavigationBarItem> list = [];
      for (int i = 0; i < widget.icon.length; i++) {
        list.add(buildBottomNavBarItems(widget.icon[i], widget.label[i]));
      }
      return list;
    }

    return BottomNavigationBar(
        backgroundColor: checkBrightness.value == Brightness.dark
            ? backgroundHardDarkThemeColor
            : white,
        elevation: 0,
        unselectedFontSize: 12,
        selectedFontSize: 12,
        selectedLabelStyle: const TextStyle(
          fontFamily: 'GoogleSans',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'GoogleSans',
          fontWeight: FontWeight.w500,
        ),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: themeSupport().isSelectedDarkMode()
            ? white
            : black,
        selectedItemColor: themeSupport().isSelectedDarkMode()
            ? backgroundGreenThemeColor
            : backgroundDarkThemeColor,
        currentIndex: widget.commonViewModel!.id,
        showUnselectedLabels: true,
        items: buildItems(),
        onTap: _updateIndex
    );
  }
}*/