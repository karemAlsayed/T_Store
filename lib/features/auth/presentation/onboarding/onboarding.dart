import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:store_app/features/auth/presentation/onboarding/controllers/onboarding_controller.dart';
import 'package:store_app/features/auth/presentation/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:store_app/features/auth/presentation/onboarding/widgets/on_boarding_next_button.dart';
import 'package:store_app/features/auth/presentation/onboarding/widgets/onboarding_page.dart';
import 'package:store_app/features/auth/presentation/onboarding/widgets/onboarding_skip.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/text_strings.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),
          const  OnBoardingSkip(),
          const OnBoardingNavigation(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

