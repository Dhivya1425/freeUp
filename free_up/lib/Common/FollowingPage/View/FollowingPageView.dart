import 'package:flutter/cupertino.dart';
import 'package:free_up/Utils/CustomWidgets/CustomText.dart';
import 'package:free_up/Utils/Language/EnglishLanguage.dart';

class FollowingPageView extends StatefulWidget {
  const FollowingPageView({super.key});

  @override
  State<FollowingPageView> createState() => _FollowingPageViewState();
}

class _FollowingPageViewState extends State<FollowingPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomText(
        text: englishLanguage.following,
      ),
    );
  }
}
