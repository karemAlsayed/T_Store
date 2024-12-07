// ignore_for_file: avoid_print

import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
  
Future<AuthResponse> googleSignIn() async {

  try {
    
  
  
  const webClientId = '180965732296-8tl6qsc63o02uaeb1p17fnhlc5biq3nu.apps.googleusercontent.com';

  
  const iosClientId = '180965732296-e0a1u2df913s60it4hcc8lkv6dmag8p4.apps.googleusercontent.com';

  final GoogleSignIn googleSignIn = GoogleSignIn(
    clientId: iosClientId,
    serverClientId: webClientId,
  );
  final googleUser = await googleSignIn.signIn();
  final googleAuth = await googleUser!.authentication;
  final accessToken = googleAuth.accessToken;
  final idToken = googleAuth.idToken;

  if (accessToken == null) {
    throw 'No Access Token found.';
  }
  if (idToken == null) {
    throw 'No ID Token found.';
  }

  return await _auth.signInWithIdToken(
    provider: OAuthProvider.google,
    idToken: idToken,
    accessToken: accessToken,
  );
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

Future<void> resetPassword(String email) async {
  try {
    await _auth.resetPasswordForEmail(email);
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
