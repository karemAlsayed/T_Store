import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, required this.onPressed, this.color,
  });
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
          IconButton(onPressed: onPressed, icon:  Icon(Iconsax.shopping_bag, color:color,)),
          Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: dark ? TColors.darkGrey : TColors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: dark ? TColors.black : TColors.white,fontSizeFactor: 0.8),),
              ),
            ),
          )
      ],
    );
  }
}
