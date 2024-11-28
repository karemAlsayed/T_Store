
import 'package:flutter/material.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';

class TSocialButton extends StatelessWidget {
  const TSocialButton({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: dark ? TColors.darkerGrey : TColors.grey),
          ),
          child: IconButton(onPressed: (){

          }, icon: 
          Image.asset(TImages.google,
          height: TSizes.iconLg,
          width: TSizes.iconLg,
          )),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: dark ? TColors.darkerGrey : TColors.grey),
          ),
          child: IconButton(onPressed: (){
            
          }, icon: 
          Image.asset(TImages.facebook,
          height: TSizes.iconLg,
          width: TSizes.iconLg,
          )),
        ),
        
      ],
    );
  }
}

