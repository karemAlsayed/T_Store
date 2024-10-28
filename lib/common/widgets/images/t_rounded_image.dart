
import 'package:flutter/material.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
     this.width,
     this.height,
    required this.imageUrl,
     this.applyImageRadius = true,
    this.border,
     this.backgroundColor =TColors.light,
     this.boxFit = BoxFit.cover,
    this.padding,
     this.isNetworkImage =false,
    this.onpressed,  this.borderRadius = TSizes.md,
  });

  final double? width, height;

  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit boxFit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onpressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: width,
        height: height,
        padding: padding ,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,

          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
            borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.circular(0),
            child:  Image(
              image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl)as ImageProvider,
              fit: boxFit,
            ) ),
      ),
    );
  }
}
