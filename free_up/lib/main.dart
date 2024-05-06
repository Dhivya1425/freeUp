import 'package:flutter/material.dart';
import 'package:free_up/Utils/CustomWidgets/CustomBottomNavigation.dart';
import 'package:free_up/Utils/CustomWidgets/CustomScaffold.dart';
import 'package:provider/provider.dart';

import 'Utils/ColorHandler/AppColors.dart';
import 'Utils/CustomWidgets/CommonBottomNavigationViewModel.dart';
import 'Utils/CustomWidgets/CustomContainer.dart';
import 'Utils/CustomWidgets/CustomText.dart';
import 'Utils/Language/EnglishLanguage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: getAllProviders(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: themeColor),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }

  getAllProviders() {
   return [
      ChangeNotifierProvider(create: (_) => CommonBottomNavigationViewModel()),
    ];
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late CommonBottomNavigationViewModel commonBottomNavigationViewModel;
  late List<IconData> icons = [
    Icons.home_outlined,
    Icons.people_outline,
    Icons.forward_to_inbox_rounded,
    Icons.manage_accounts_outlined
  ];
  late List<String> labels = [
    englishLanguage.home,
    englishLanguage.following,
    englishLanguage.inbox,
    englishLanguage.profile
  ];

  late List<Widget> widgetOptions;

  @override
  void initState() {
    // TODO: implement initState
    commonBottomNavigationViewModel = Provider.of<CommonBottomNavigationViewModel>(context,listen: false);
    widgetOptions = [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    commonBottomNavigationViewModel = context.watch<CommonBottomNavigationViewModel>();
    Size size = MediaQuery.of(context).size;
    return Provider(
      create: (context) => commonBottomNavigationViewModel,
      child: CustomScaffold(
          resizeToAvoidBottomInset: true,
          bottomNavigationBar: CustomBottomNavigation(
            bottomAppBarHeight: 100,
            icon: icons,
            label: labels,
            color: transparent,
            onTabSelected: onItemTapped,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: CustomContainer(
            height: size.height / 75,
            width:size.width / 70,
            child: FloatingActionButton(
                shape: CircleBorder(),
                onPressed: () {},
                backgroundColor: themeColor,
                child: CustomText(
                  text: englishLanguage.sell,
                )),

          ),
      child: widgetOptions.elementAt(commonBottomNavigationViewModel.bottomIndex),),
    );
  }

   onItemTapped(int value) {
     commonBottomNavigationViewModel.setBottomNavigationIndex(value);
  }
}
