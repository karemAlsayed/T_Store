// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:store_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:store_app/features/shop/screens/product_details/widgets/product_metadata.dart';
import 'package:store_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TProductImageSlider(),
            TRaitngAndShare(),
            TProductMetaData()
            


          ],
        ),
      ),
    );
  }
}