import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/texts/section_heading.dart';
import 'package:store_app/utils/constants/sizes.dart';


class TBillingAdressSection extends StatelessWidget {
  const TBillingAdressSection({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          'Kareem Alsayed',
          style: Theme.of(context).textTheme.bodyLarge,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),

        Row(
          children: [

            const Icon(Icons.phone,color: Colors.grey,size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text(
              '01123456789',
              style: Theme.of(context).textTheme.bodyMedium,
              
            ),

          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),

        Row(
          children: [

            const Icon(Icons.location_history,color: Colors.grey,size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text(
              'Cairo, Egypt',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
              
            ),

          ],
        ),

        
      ],
    );
  }
}