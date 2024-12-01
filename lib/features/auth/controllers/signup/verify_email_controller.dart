// import 'dart:async';

// import 'package:get/get.dart';
// import 'package:store_app/common/widgets/success_screen/success_screen.dart';
// import 'package:store_app/data/repos/auth_repo.dart';
// import 'package:store_app/utils/constants/image_strings.dart';
// import 'package:store_app/utils/constants/text_strings.dart';
// import 'package:store_app/utils/popups/loaders.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// class VerifyEmailController extends GetxController {
//   static VerifyEmailController get instance => Get.find();

//   @override
//   void onInit() {
//     sendEmailVerification();
//     super.onInit();
//   }

//   sendEmailVerification() async {
//     try {
//       await AuthenticationRepository.instance.sendEmailVerification();
//       TLoaders.successSnackBar(
//           title: 'Success', message: 'Verification email sent successfully.');
//     } catch (e) {
//       TLoaders.errorSnackBar(title: 'Error', message: e.toString());
//     }
//   }

//   setTimerForAutoVerification() {
//     Timer.periodic(const Duration(seconds: 1), (timer) async {
//       try {
//         // Refresh the session to reload user data
//         await Supabase.instance.client.auth.refreshSession();
//         final user = Supabase.instance.client.auth.currentUser;
//         if ((user != null && user.emailConfirmedAt!.isNotEmpty)) {
//           timer.cancel();
//           Get.off(SuccessScreen(
//               img: TImages.successfullyRegisterAnimation,
//               title: TTexts.yourAccountCreatedTitle,
//               subTitle: TTexts.yourAccountCreatedSubTitle,
//               onPressed: () {
//                 AuthenticationRepository.instance.screenRedirect();
//               }));
//         }
//       } catch (e) {
//         rethrow;
//       }
//     });
//   }
// checkEmailVerificationManually() async {
//   try {
//     final user = Supabase.instance.client.auth.currentUser;
//     if (user == null) {
//       // Redirect to login if user is not logged in
      
      
//       return;
//     }

//     await Supabase.instance.client.auth.refreshSession();

//     if (user.emailConfirmedAt != null) {
//       Get.off(SuccessScreen(
//           img: TImages.successfullyRegisterAnimation,
//           title: TTexts.yourAccountCreatedTitle,
//           subTitle: TTexts.yourAccountCreatedSubTitle,
//           onPressed: () {
//             AuthenticationRepository.instance.screenRedirect();
//           }));
//     } else {
    
//     }
//   } catch (e) {
  
//     rethrow; // Optionally rethrow for further error handling
//   }
// }

// }
