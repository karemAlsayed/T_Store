import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/common/widgets/icons/t_circular_icon.dart';
import 'package:store_app/common/widgets/layouts/grid_layout.dart';
import 'package:store_app/common/widgets/products/product_card_vertical.dart';
import 'package:store_app/features/shop/screens/home/home.dart';
import 'package:store_app/utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'WishList',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackButton: false,
        actions: [
          TCircularIcon(
              icon: Iconsax.add,
              onPressed: () {
                Get.to(const HomeScreen());
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 10,
                itemBuilder: (_, index) => const TProductCardVertical(),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
