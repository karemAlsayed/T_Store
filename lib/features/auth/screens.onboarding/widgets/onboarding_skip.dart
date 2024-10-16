

import 'package:flutter/material.dart';
import 'package:store_app/features/auth/controllers.onboarding/onboarding_controller.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final islast = OnBoardingController.instance.currentPageIndex.value == 2;
    return islast ? const SizedBox() : Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
    child: TextButton(onPressed: (){
      OnBoardingController.instance.skipPage();
    }, child: const Text('Skip')),
    );
  }
}

