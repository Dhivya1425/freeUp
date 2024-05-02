import 'package:flutter/material.dart';
import 'package:free_up/Utils/CustomWidgets/CustomBottomNavigation.dart';
import 'package:free_up/Utils/CustomWidgets/CustomScaffold.dart';

import 'Utils/ColorHandler/AppColors.dart';
import 'Utils/CustomWidgets/CustomText.dart';
import 'Utils/Language/EnglishLanguage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: themeColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late List<IconData> icons = [Icons.home_outlined, Icons.people_outline, Icons.people_outline,Icons.forward_to_inbox_rounded,Icons.manage_accounts_outlined];
  late List<String> labels = [englishLanguage.home,englishLanguage.following,englishLanguage.following,englishLanguage.inbox,englishLanguage.profile];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: CustomBottomNavigation(bottomAppBarHeight: 100,icon: icons,label: labels,),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: Container(
        height: 90,
        width: 70,
        child: FloatingActionButton(shape: CircleBorder(),
          onPressed: () {

            },
          backgroundColor:themeColor,
          child:CustomText(text: englishLanguage.sell,)
        ),
      ));
  }
}
