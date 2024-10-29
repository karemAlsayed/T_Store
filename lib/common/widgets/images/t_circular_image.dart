import 'package:flutter/material.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';

class TCircularIMage extends StatelessWidget {
  const TCircularIMage({
    super.key,
    required this.dark,
    this.fit = BoxFit.cover,
    required this.image,
    required this.isNetworkImage,
    this.overLayColor,
    this.backgroundColor,
    this.height = 56,
    this.width =56,
    this.padding =TSizes.sm,
  });

  final bool dark;
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overLayColor, backgroundColor;
  final double? height, width, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? TColors.black : TColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage ? NetworkImage(image) : AssetImage(image)as ImageProvider,
        color: dark ? TColors.white : TColors.dark,
      ),
    );
  }
}
