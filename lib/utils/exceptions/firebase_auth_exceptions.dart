/// Custom exception class to handle various Supabase authentication-related errors.
class TSupabaseAuthException implements Exception {
  /// The error code or message associated with the exception.
  final String code;

  /// Constructor that takes an error code or message.
  TSupabaseAuthException(this.code);

  /// Get the corresponding error message based on the error code.
  String get message {
    switch (code) {
      case '400':
        return 'Bad Request. Please check your inputs and try again.';
      case '401':
        return 'Unauthorized access. Please log in to continue.';
      case '403':
        return 'Forbidden. You don\'t have permission to access this resource.';
      case '404':
        return 'Resource not found. Please try again.';
      case '409':
        return 'Conflict. The email or username already exists.';
      case '429':
        return 'Too many requests. Please wait a while before trying again.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'invalid-password':
        return 'The password provided is incorrect or doesn\'t meet the requirements.';
      case 'user-not-found':
        return 'Invalid login details. User not found.';
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'user-disabled':
        return 'This user account has been disabled. Please contact support for assistance.';
      case 'expired-token':
        return 'Your session has expired. Please log in again.';
      case 'invalid-token':
        return 'The authentication token is invalid. Please log in again.';
      case 'missing-password':
        return 'The password is required. Please provide a valid password.';
      default:
        return 'An unexpected authentication error occurred. Please try again.';
    }
  }
}
