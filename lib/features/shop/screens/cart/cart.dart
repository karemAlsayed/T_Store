import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:store_app/features/shop/screens/checkout/checkout.dart';
import 'package:store_app/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackButton: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: TCartItems(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => const CheckoutScreen());
            },
            child: const Text('Checkout   \$149.00')),
      ),
    );
  }
}
