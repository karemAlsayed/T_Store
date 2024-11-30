

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/common/widgets/login_signup/login_divider.dart';
import 'package:store_app/common/widgets/login_signup/social_button.dart';
import 'package:store_app/features/auth/presentation/signup/widgets/signup_form.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/text_strings.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme:  IconThemeData(color: dark ? TColors.light : TColors.dark),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
      
              children: [
                Text( TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,),
                  const SizedBox(height: TSizes.spaceBtwSections,),
      
                   SignupForm( dark: dark,),
                   
                   
      
                    const SizedBox(height: TSizes.spaceBtwSections,),
      
                    TFormDivider(dark: dark, text: TTexts.orSignUpWith.capitalize!,),
      
                    const SizedBox(height: TSizes.spaceBtwSections,),
      
                    TSocialButton(dark: dark)
              ],
            ),
            ),
      
        ),
      ),
    );
  }
}