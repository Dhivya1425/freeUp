import 'package:flutter/cupertino.dart';
import 'package:free_up/Utils/CustomWidgets/CustomText.dart';
import 'package:free_up/Utils/Language/EnglishLanguage.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomText(
        text: englishLanguage.home,
      ),
    );
  }
}
