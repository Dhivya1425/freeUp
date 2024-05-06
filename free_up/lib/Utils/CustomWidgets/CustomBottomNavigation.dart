import 'package:flutter/material.dart';
import 'package:free_up/Utils/CustomWidgets/CustomText.dart';

import '../../Common/CommonLoginBottomSheet/View/CommonLoginBottomSheetView.dart';

class CustomBottomNavigation extends StatefulWidget {
  double bottomAppBarHeight = 100;
  final List icon;
  final List label;
  final Color? color;
  final ValueChanged<int>? onTabSelected;

  CustomBottomNavigation({
    Key? key,
    required this.bottomAppBarHeight,
    required this.icon,
    required this.label,
    this.color,
    this.onTabSelected,
  }) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: widget.bottomAppBarHeight,
      clipBehavior: Clip.hardEdge,
      color: widget.color,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: buildItems()),
    );
  }

  textWithIcon(
    String text,
    IconData icon,
  ) {
    return Column(
      children: [
        IconButton(
          icon: Icon(
            icon,
          ),
          onPressed: () {},
        ),
        CustomText(
          text: text,
        ),
      ],
    );
  }

  showPinBottomSheet(BuildContext context) async {
    final result = await Navigator.of(context).push(CommonBottomSheetView(
      context,
    ));
  }

  buildItems() {
    List<Widget> list = [];
    for (int i = 0; i < widget.icon.length; i++) {
      list.add(textWithIcon(
        widget.label[i],
        widget.icon[i],
      ));
    }
    return list;
  }
}
