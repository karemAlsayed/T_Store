import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/features/shop/screens/home/home.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: dark ? TColors.black : TColors.white,
          
          indicatorColor: dark ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
          selectedIndex: controller.currentIndex.value,
          height: 80,
          elevation: 0,
          onDestinationSelected: (value) {
            controller.currentIndex.value = value;
          },
          destinations:const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shop),
              label: 'Store',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: 'Wishlist',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.currentIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> currentIndex = 0.obs;

  final List<Widget> screens = [
    const HomeScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];
}
