import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store_app/common/widgets/texts/product_price.dart';
import 'package:store_app/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:store_app/features/shop/screens/cart/widgets/product_add_remove.dart';
import 'package:store_app/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,  this.showAddButton =true,  this.items=10,
  });
  final bool showAddButton;
  final int items ;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: 5,
      ),
      itemCount: items,
      itemBuilder: (_, index) =>  TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.symmetric(
            horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
        child: Column(
          children: [
            const TCartItem(),
            if(showAddButton)const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
             if(showAddButton) const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    TProductQuantityWithAddRemove(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: TProductPriceText(price: '149'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
