import 'package:flutter/material.dart';



class CommonBottomSheetView extends ModalRoute {
  late BuildContext context;
  CommonBottomSheetView(BuildContext context) {
  }

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.6);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  Future<bool> pop() async {
    Navigator.pop(context, false);
    return false;
  }

  @override
  Widget buildPage(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
    return WillPopScope(
      onWillPop: pop,
        child: Material(
            type: MaterialType.transparency,
            child: SafeArea(
                child: Stack(children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.pop(context);
                    },
                    child: IgnorePointer(
                      ignoring: false,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                        ],
                      ),
                    ),
                  )
                ]))),
      );

  }






}