import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/common/widgets/texts/t_brand_title_text.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/enums.dart';
import 'package:store_app/utils/constants/sizes.dart';

class TBrandIconWithVerifiedIcon extends StatelessWidget {
  const TBrandIconWithVerifiedIcon({
    super.key,
    required this.title,
     this.maxLines = 1,
    this.textAlign = TextAlign.center, 
    this.textColor,
    this.iconColor = TColors.primary,
     this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final Color? textColor, iconColor;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TBrandTitleText(
          title: title,
          maxLines: maxLines,
          textAlign: textAlign,
          color: textColor,
          brandTextSize: brandTextSize,
          

        ),
        const SizedBox(
          width: TSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: TColors.primary,
          size: TSizes.iconXs,
        ),
      ],
    );
  }
}
