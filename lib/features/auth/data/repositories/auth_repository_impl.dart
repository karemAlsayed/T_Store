import 'package:dartz/dartz.dart';
import 'package:store_app/features/auth/domain/repositories/auth/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<bool> isLoggedIn() {
    
    throw UnimplementedError();
  }

  @override
  Future<Either> logout() {
    
    throw UnimplementedError();
  }

  @override
  Future<Either> resetPassword({required String email}) {
    
    throw UnimplementedError();
  }

  @override
  Future<Either> sendEmailVerification() {
    
    throw UnimplementedError();
  }

  @override
  Future<Either> signIn() {
    
    throw UnimplementedError();
  }

  @override
  Future<Either> signup() {
    
    throw UnimplementedError();
  }
}
