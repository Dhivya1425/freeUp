import 'package:flutter/material.dart';



class CustomScaffold extends StatelessWidget {
  Color? color = Colors.black; // used for background color
  final Widget? child; //add functionality
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Widget? body;
  final Key? scaffoldKey;
  final AppBar? appBar;

  CustomScaffold(
      {Key? key,
      this.color,
      this.child,
      this.scaffoldKey,
      this.bottomNavigationBar,
      this.drawer,
      this.appBar,
      this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
      appBar: appBar,
      backgroundColor: color,
      body: SafeArea(child: child ?? SizedBox()),
    );
  }
}
