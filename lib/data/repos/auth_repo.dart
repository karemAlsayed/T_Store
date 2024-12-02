// ignore_for_file: avoid_print

import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:store_app/features/auth/presentation/login/login.dart';
import 'package:store_app/features/auth/presentation/onboarding/onboarding.dart';
import 'package:store_app/navigation_menu.dart';
import 'package:store_app/utils/exceptions/format_exceptions.dart';
import 'package:store_app/utils/exceptions/platform_exceptions.dart';
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
    final user = _auth.currentUser;

    if (user != null) {
      Get.off(() => const NavigationMenu());
    } else {
      deviceStorage.writeIfNull('isFirstTime', true);
      if (deviceStorage.read('isFirstTime') != true) {
        Get.offAll(() => const LoginScreen());
      } else {
        Get.offAll(() => const OnBoardingScreen());
      }
    }
  }

  Future<AuthResponse> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final response = await _auth.signUp(
        password: password,
        email: email,
        captchaToken: null,
      );

      return response;
    } on AuthException catch (e) {
      throw e.message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } catch (e) {
      throw 'Something went wrong.';
    }
  }

  Future<AuthResponse> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      final response = await _auth.signInWithPassword(
        password: password,
        email: email,
        captchaToken: null,
      );

      return response;
    } on AuthException catch (e) {
      throw e.message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } catch (e) {
      throw 'Something went wrong.';
    }
  }

  Future<void> logout() async {
    try {
      await _auth.signOut();
      screenRedirect();
    } on AuthException catch (e) {
      throw e.message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } catch (e) {
      throw 'Something went wrong.';
    }
  }
}
