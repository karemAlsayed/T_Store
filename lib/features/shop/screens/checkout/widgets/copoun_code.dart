


import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: const EdgeInsets.only(
        top: TSizes.sm,
        bottom: TSizes.sm,
        left: TSizes.md,
        right: TSizes.sm,),
        child: Row(
          children: [
            Flexible(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter coupon code',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              width: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: dark ? TColors.white.withOpacity(0.5) : TColors.dark. withOpacity(0.5),
                  backgroundColor: TColors.grey.withOpacity(0.2),
                  side: BorderSide(
                    color: TColors.grey.withOpacity(0.1),
                  )
                ),
                onPressed: 
               () {}, child: const Text('Apply')
               ,),
            )
          ],
        ),
    
    
    );
  }
}