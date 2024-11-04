import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TOrderListItem extends StatelessWidget {
  const TOrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems),
      itemBuilder: (_, index) =>
    TRoundedContainer( 
        showBorder: true,
        backgroundColor: dark? TColors.dark : TColors.light,
        child: Padding(
          padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Icon(Iconsax.ship),
                  const SizedBox(width: TSizes.spaceBtwItems/2,),
          
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary,fontWeightDelta: 1),
                          
                            
                        ),
                        Text(
                          '06 June 2022',
                          style: Theme.of(context).textTheme.headlineSmall,
                            
                        ),
                      ],
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: TSizes.iconSm,)),
      
          
                ],
      
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(Iconsax.tag),
                        const SizedBox(width: TSizes.spaceBtwItems/2,),
                            
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Order',
                                style: Theme.of(context).textTheme.bodyMedium,
                                
                                  
                              ),
                              Text(
                                '#123456789',
                                style: Theme.of(context).textTheme.titleMedium,
                                  
                              ),
                            ],
                          ),
                        ),
                        
                    
                            
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(Iconsax.calendar),
                        const SizedBox(width: TSizes.spaceBtwItems/2,),
                            
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Shipping Date',
                                style: Theme.of(context).textTheme.bodyMedium,
                                
                                  
                              ),
                              Text(
                                '06 June 2022',
                                style: Theme.of(context).textTheme.titleMedium,
                                  
                              ),
                            ],
                          ),
                        ),
                        
                    
                            
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      
      ),
    );
  }
}
