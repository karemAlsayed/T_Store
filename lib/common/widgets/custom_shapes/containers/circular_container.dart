



import 'package:flutter/material.dart';
import 'package:store_app/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key, this.width=400, this.height =400,  this.radius=400,  this.padding=0, this.child, this.backgroundColor=TColors.white,
  });
  final double? width,height;
  final double radius, padding;
  final Widget? child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding:  EdgeInsets.all(padding),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}