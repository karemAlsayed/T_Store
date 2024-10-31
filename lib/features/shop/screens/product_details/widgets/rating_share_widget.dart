import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';

class TRaitngAndShare extends StatelessWidget {
  const TRaitngAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: TSizes.defaultSpace,
          left: TSizes.defaultSpace,
          bottom: TSizes.defaultSpace/3),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Iconsax.star1,
                    color: Colors.amber,
                    size: 24,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems / 2,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: '4.8',
                        style: Theme.of(context).textTheme.bodyLarge),
                    const TextSpan(text: '  '),
                    TextSpan(
                        text: '(157)',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .apply(color: TColors.darkGrey)),
                  ])),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    size: TSizes.iconMd,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
