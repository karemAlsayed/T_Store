// ignore_for_file: avoid_print

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:store_app/features/auth/presentation/login/login.dart';
import 'package:store_app/features/auth/presentation/onboarding/onboarding.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = Supabase.instance.client.auth;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    deviceStorage.writeIfNull('isFirstTime', true);
    if (deviceStorage.read('isFirstTime') != true) {
      Get.offAll(() => const LoginScreen());
    } else {
      Get.offAll(() => const OnBoardingScreen());
    }
  }

  Future<AuthResponse> registerWithEmailAndPassword(
    String email,
    String password,
    
  ) async {
    try {
  final response = await _auth.signUp(password: password, email: email, captchaToken: null,);
  print('User created: ${response.user?.email}');
  return response;
} catch (e) {
  print('Error creating user: $e');
  rethrow;
}
  }
}
