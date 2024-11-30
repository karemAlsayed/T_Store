import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:store_app/features/auth/presentation/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;
  int totalPages = 3; // Number of pages in the onboarding process

  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void nextPage() {
    if (currentPageIndex.value == totalPages - 1) {
      final storage = GetStorage();
      storage.write('isFirstTime', false);
      Get.offAll(const LoginScreen());
    } else {
      currentPageIndex.value++;
      pageController.animateToPage(
        currentPageIndex.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void skipPage() {
    currentPageIndex.value = totalPages - 1;
    final storage = GetStorage();
    storage.write('isFirstTime', false);
    pageController.animateToPage(
      totalPages - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
