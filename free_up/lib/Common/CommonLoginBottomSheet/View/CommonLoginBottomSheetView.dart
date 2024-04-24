import 'package:flutter/material.dart';

class CommonBottomSheetView extends StatefulWidget {
  const CommonBottomSheetView({Key? key}) : super(key: key);

  @override
  State<CommonBottomSheetView> createState() => _CommonBottomSheetViewState();
}

class _CommonBottomSheetViewState extends State<CommonBottomSheetView>  with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastLinearToSlowEaseIn,
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.pop(context);
      },
      child: BottomSheet(
        onClosing: () {
          Navigator.pop(context);
        },
        builder: (BuildContext context) {
          return AnimatedContainer(
            duration: Duration(seconds: 1),
            child: Container(
              color: Colors.red,
              width: double.infinity,
              height: 200,
            ),
          );
        },
      ),
    );
  }
}
