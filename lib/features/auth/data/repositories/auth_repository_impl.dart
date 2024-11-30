import 'package:dartz/dartz.dart';
import 'package:store_app/features/auth/domain/repositories/auth/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<bool> isLoggedIn() {
    // TODO: implement isLoggedIn
    throw UnimplementedError();
  }

  @override
  Future<Either> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either> resetPassword({required String email}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<Either> sendEmailVerification() {
    // TODO: implement sendEmailVerification
    throw UnimplementedError();
  }

  @override
  Future<Either> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either> signup() {
    // TODO: implement signup
    throw UnimplementedError();
  }
}
