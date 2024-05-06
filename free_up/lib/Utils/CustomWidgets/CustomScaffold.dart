import 'package:flutter/material.dart';



class CustomScaffold extends StatelessWidget {
  Color? color = Colors.black; // used for background color
  final Widget? child; //add functionality
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Widget? body;
  final Key? scaffoldKey;
  final AppBar? appBar;
  final bool? resizeToAvoidBottomInset;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? floatingActionButton;

  CustomScaffold(
      {Key? key,
      this.color,
      this.child,
      this.scaffoldKey,
      this.bottomNavigationBar,
      this.drawer,
      this.appBar,
      this.body,this.resizeToAvoidBottomInset,this.floatingActionButtonLocation,this.floatingActionButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButton:floatingActionButton,
      key: scaffoldKey,
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
      appBar: appBar,
      backgroundColor: color,
      body: SafeArea(child: child ?? SizedBox()),
    );
  }
}
