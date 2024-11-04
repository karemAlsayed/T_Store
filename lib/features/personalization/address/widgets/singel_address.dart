import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TSingelAddress extends StatelessWidget {
  const TSingelAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      width: double.infinity,
      padding:  const EdgeInsets.all(TSizes.md),
      showBorder: true,
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? TColors.darkGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : Iconsax.tick_circle,
              color: selectedAddress
                  ? dark
                      ? TColors.light
                      : TColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment:  CrossAxisAlignment.start,
            children: [
              Text(
                'Kareem Elsayed',
                overflow:  TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge
              ),
              const SizedBox(height: TSizes.sm/2,),
              const Text(
                '(+20) 1008650 468',
                overflow:  TextOverflow.ellipsis,
                // style: Theme.of(context).textTheme.bodyLarge
              ),
              const SizedBox(height: TSizes.sm/2,),
               const Text(
                'Egypt,cairo,Abbas Alaqaad ST , 12, next to the mall, beyound the mall, 3rd floor',
                softWrap: true,
                
              ),

              



            ],
          )

        ],
      ),
    );
  }
}
