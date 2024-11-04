import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store_app/common/widgets/success_screen/success_screen.dart';
import 'package:store_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:store_app/features/shop/screens/checkout/widgets/billing_address.dart';
import 'package:store_app/features/shop/screens/checkout/widgets/billing_amount.dart';
import 'package:store_app/features/shop/screens/checkout/widgets/billing_payment.dart';
import 'package:store_app/features/shop/screens/checkout/widgets/copoun_code.dart';
import 'package:store_app/navigation_menu.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Order Summary',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TCartItems(
                showAddButton: false,
                items: 3,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const TCouponCode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    TBillingAmountSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Divider(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    TBillingPaymentSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    TBillingAdressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => SuccessScreen(
                    img: TImages.successfulPaymentIcon,
                    title: 'Successful Payment',
                    subTitle: 'Your order has been placed',
                    onPressed: () {
                      Get.offAll(() => const NavigationMenu());
                    },
                  ));
            },
            child: const Text('Place Order & Pay  \$149.00')),
      ),
    );
  }
}
