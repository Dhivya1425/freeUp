import 'package:flutter/material.dart';
import 'package:free_up/Utils/CustomWidgets/CustomBottomNavigation.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
          height: 64,
          width: 62,
          child: FloatingActionButton(
              onPressed: (){},
              backgroundColor: themeColor,
              elevation: 58.0,
              shape: const CircleBorder(),
          child: CustomText(text:englishLanguage.sell),
    ),
    ),
      floatingActionButtonLocation : FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigation(bottomAppBarHeight: 100,),
    );
  }
}
