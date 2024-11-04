import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/common/widgets/cart_counter_icon/cart_counter_icon.dart';
import 'package:store_app/features/shop/screens/cart/cart.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/text_strings.dart';

class THomeAppbar extends StatelessWidget {
  const THomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(TTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey),),
        Text('Kareem',style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),)
      ],
    ), showBackButton: false,
    actions:  [
    TCartCounterIcon(
      color: TColors.white,
      onPressed: (){
        Get.to(() => const CartScreen());
      },
    ),
    ],
    );
  }
}

