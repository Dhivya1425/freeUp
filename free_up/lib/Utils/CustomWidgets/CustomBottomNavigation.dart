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

/*BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        unselectedItemColor: CustomColors.grey,
        selectedItemColor: CustomColors.appTheme,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(walletList),
              ),
              label: 'Wallets'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Security1,
                height: 25,
                fit: BoxFit.fill,
                color: Colors.grey,
              ),
              activeIcon: SvgPicture.asset(
                Security1,
                height: 25,
                fit: BoxFit.fill,
                color: CustomColors.buttonColor,
              ),
              label: 'Security'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 0,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                FilterB,
                height: 25,
                fit: BoxFit.fill,
                color: Colors.grey,
              ),
              /*  icon: ImageIcon(
                        AssetImage(filter),
                      ),*/
              activeIcon: SvgPicture.asset(
                FilterB,
                height: 25,
                fit: BoxFit.fill,
                color: CustomColors.buttonColor,
              ),
              label: 'Filter'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                prefer,
                height: 25,
                fit: BoxFit.fill,
                color: Colors.grey,
              ),
              activeIcon: SvgPicture.asset(
                prefer,
                height: 25,
                fit: BoxFit.fill,
                color: CustomColors.buttonColor,
              ),
              label: 'Settings'),
        ],
        selectedLabelStyle: TextStyle(fontSize: 12),
      ),
      floatingActionButton: Visibility(
        visible: !keyboardIsOpen,
        child: Container(
          height: 90,
          width: 70,
          child: FloatingActionButton(
            onPressed: () {
              (newIndex) => setState(() => _index = newIndex);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PaymentWallet(
                          context,
                        )),
              );
            },
            backgroundColor: CustomColors.appTheme,
            child: SvgPicture.asset(
              WalletBlk,
              height: 28,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/