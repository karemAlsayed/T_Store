import 'package:flutter/material.dart';

import 'package:store_app/utils/constants/colors.dart';


class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dark, required this.text,
  });
  final String text ;

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkerGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
         Text(text,
          style:Theme.of(context).textTheme.labelMedium, ),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkerGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}

