


import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/common/widgets/icons/t_circular_icon.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';

class TProductQuantityWithAddRemove extends StatelessWidget {
  const TProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TCircularIcon(
            icon: Iconsax.minus,
            onPressed: () {},
            backgroundColor: TColors.primary,
            width: 32,
            height: 32,
            size: TSizes.md,
            color: TColors.white,
          ),
        
          const SizedBox(
            width: TSizes.spaceBtwItems,),
          Text(
            '1',
            style: Theme.of(context).textTheme.titleSmall,
          )  ,
          const SizedBox(
            width: TSizes.spaceBtwItems,),
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () {},
            backgroundColor: TColors.primary,
            width: 32,
            height: 32,
            size: TSizes.md,
            color: TColors.white,
          ),
      ],
    );
  }
}
