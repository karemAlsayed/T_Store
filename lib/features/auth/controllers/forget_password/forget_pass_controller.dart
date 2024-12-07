import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:store_app/data/repos/auth_repo.dart';
import 'package:store_app/features/auth/presentation/password_config/reset_password.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/helpers/network_manager.dart';
import 'package:store_app/utils/popups/full_screen_loader.dart';
import 'package:store_app/utils/popups/loaders.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();
  final email = TextEditingController();

  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      TFullScreenLoader.openLoadingDialog('', TImages.registerIllustration);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        TLoaders.errorSnackBar(
            title: 'Error', message: 'No internet connection.');
        return;
      }

      if (!forgetPasswordFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.resetPassword(email.text.trim());

      TFullScreenLoader.stopLoading();
      Get.to(() => ResetPassword(
            email: email.text.trim(),
          ));
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      TFullScreenLoader.openLoadingDialog('', TImages.registerIllustration);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        TLoaders.errorSnackBar(
            title: 'Error', message: 'No internet connection.');

        return;
      }

      if (!forgetPasswordFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.resetPassword(email);

      TFullScreenLoader.stopLoading();
      TLoaders.successSnackBar(
        title: 'Success',
        message: 'Verification email sent successfully.',
      );
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }

  logout() async {
    try {
    
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        
        TLoaders.errorSnackBar(
            title: 'Error', message: 'No internet connection.');

        return;
      }

      await AuthenticationRepository.instance.logout();

      
      TLoaders.successSnackBar(
        title: 'Success',
        message: 'Logout succeded.',
      );
    } catch (e) {
      
      TLoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }
}
