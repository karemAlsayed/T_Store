import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/device/device_utility.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true, this.ontap,  this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? ontap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: GestureDetector(
        child: Container(
            width: TDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(TSizes.md),
            decoration: BoxDecoration(
                color: showBackground
                    ? dark
                        ? TColors.dark
                        : TColors.white
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
                border: showBorder
                    ? Border.all(
                        color: TColors.grey,
                      )
                    : null),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: TColors.darkerGrey,
                ),
                const SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            )),
      ),
    );
  }
}
