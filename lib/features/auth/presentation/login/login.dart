

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/common/styles/spacing_styles.dart';
import 'package:store_app/common/widgets/login_signup/login_divider.dart';
import 'package:store_app/features/auth/presentation/login/widgets/login_form.dart';
import 'package:store_app/features/auth/presentation/login/widgets/login_header.dart';
import 'package:store_app/common/widgets/login_signup/social_button.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/text_strings.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyles.paddingwithAppBarHeight,
            child: Column(
              children: [
                TLoginHeader(dark: dark),
                const TLoginForm(),
      
                  TFormDivider(dark: dark,text: TTexts.orSignInWith.capitalize!,),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSocialButton(dark: dark)
      
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}
