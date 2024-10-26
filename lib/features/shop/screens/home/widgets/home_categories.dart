

import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/image_text_widgets/verticle_image_text.dart';
import 'package:store_app/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return  TVeticalImageText(
            image: TImages.shoeIcon,
            title: 'Shoes',
            onTap: () {
              
            },
          );
        },
      ),
    );
  }
}