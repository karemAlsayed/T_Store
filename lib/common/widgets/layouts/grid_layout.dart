import 'package:flutter/material.dart';

import 'package:store_app/utils/constants/sizes.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key, required this.itemCount,  this.mainAxisExtent = 288, required this.itemBuilder,
  });
  final int itemCount;
  final double mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: TSizes.gridViewSpacing,
          mainAxisSpacing: TSizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtent),
      itemBuilder: itemBuilder,
    );
  }
}
