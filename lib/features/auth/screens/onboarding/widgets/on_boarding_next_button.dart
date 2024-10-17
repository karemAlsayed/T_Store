


import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/features/auth/screens/onboarding/controllers/onboarding_controller.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/device/device_utility.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
          onPressed: () {
            OnBoardingController.instance.nextPage();
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primary : TColors.black,
          ), child: const Icon(Iconsax.arrow_right_3),
          ),
    );
  }
}
