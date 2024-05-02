import 'package:flutter/cupertino.dart';

class CustomContainer extends StatelessWidget {
  final double? height; // used for container height
  final double? width; // used for container width
  final Color? color; // used for container color
  final Decoration? decoration; // add decoration to the container
  final BoxConstraints? constraints; // add decoration to the container
  final Widget? child; //return widget
  final double? padding; // space around the container
  final EdgeInsets? paddingIn;
  final EdgeInsets? margin;
  CustomContainer({
    Key? key,
      this.color,
      this.child,
      this.width,
      this.height,
      this.decoration,
      this.constraints,
      this.padding,
      this.paddingIn,
      this.margin
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: paddingIn ?? EdgeInsets.all(padding ?? 0),
      height: height != null
          ? MediaQuery.of(context).size.height / (height ?? 1)
          : null,
      width: width != null
          ? MediaQuery.of(context).size.width / (width ?? 1)
          : null,
      color: color,
      decoration: decoration,
      constraints: constraints,
      child: child,
    );
  }
}
