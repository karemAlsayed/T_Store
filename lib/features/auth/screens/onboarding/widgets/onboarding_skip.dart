import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/features/auth/screens/onboarding/controllers/onboarding_controller.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isLastPage = OnBoardingController.instance.currentPageIndex.value == 2;
      return isLastPage
          ? const SizedBox()
          : Positioned(
              top: TDeviceUtils.getAppBarHeight(),
              right: TSizes.defaultSpace,
              child: TextButton(
                onPressed: () {
                  OnBoardingController.instance.skipPage();
                },
                child: const Text('Skip'),
              ),
            );
    });
  }
}
