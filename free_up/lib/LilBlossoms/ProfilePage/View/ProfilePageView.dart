import 'package:flutter/cupertino.dart';
import 'package:free_up/Utils/CustomWidgets/CustomText.dart';
import 'package:free_up/Utils/Language/EnglishLanguage.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({super.key});

  @override
  State<ProfilePageView> createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomText(
        text: englishLanguage.profile,
      ),
    );
  }
}
