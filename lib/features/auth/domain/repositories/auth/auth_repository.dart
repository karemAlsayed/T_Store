import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either> signup();
  Future<Either> signIn();
  Future<bool> isLoggedIn();
  Future<Either> logout();
  Future<Either> resetPassword({required String email});
  Future<Either> sendEmailVerification();
}
