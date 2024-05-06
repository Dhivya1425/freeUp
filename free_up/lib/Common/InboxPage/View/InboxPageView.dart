import 'package:flutter/cupertino.dart';
import 'package:free_up/Utils/CustomWidgets/CustomText.dart';
import 'package:free_up/Utils/Language/EnglishLanguage.dart';

class InboxPageView extends StatefulWidget {
  const InboxPageView({super.key});

  @override
  State<InboxPageView> createState() => _InboxPageViewState();
}

class _InboxPageViewState extends State<InboxPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomText(
        text: englishLanguage.inbox,
      ),
    );
  }
}
