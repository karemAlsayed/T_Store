



import 'package:flutter/material.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/device/device_utility.dart';

class TRatingProgressIndecator extends StatelessWidget {
  const TRatingProgressIndecator({
    super.key, required this.value, required this.text,
  });

  final double value;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Text(text,style: Theme.of(context).textTheme.bodyMedium,)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: TDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value:value,
              minHeight: 11,
              borderRadius: BorderRadius.circular(7),
              backgroundColor: TColors.grey,
              valueColor: const AlwaysStoppedAnimation( TColors.primary),
            ),
          ),
        )
      ],
    );
  }
}