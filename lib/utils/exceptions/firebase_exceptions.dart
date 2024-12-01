/// Custom exception class to handle various Supabase-related errors.
class TSupabaseException implements Exception {
  /// The error code or message associated with the exception.
  final String code;

  /// Constructor that takes an error code or message.
  TSupabaseException(this.code);

  /// Get the corresponding error message based on the error code.
  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown error occurred with Supabase. Please try again.';
      case '400':
        return 'Bad Request. Please check your inputs and try again.';
      case '401':
        return 'Unauthorized. Please log in to access this resource.';
      case '403':
        return 'Forbidden. You don\'t have permission to perform this action.';
      case '404':
        return 'Resource not found. Please try again.';
      case '409':
        return 'Conflict detected. This resource may already exist.';
      case '429':
        return 'Too many requests. Please slow down and try again later.';
      case '500':
        return 'Internal server error. Please try again later.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'user-not-found':
        return 'No user found for the given email.';
      case 'invalid-password':
        return 'Incorrect password. Please check your password and try again.';
      case 'invalid-token':
        return 'The authentication token is invalid or expired. Please log in again.';
      case 'expired-token':
        return 'Your session has expired. Please log in again.';
      case 'missing-password':
        return 'The password field is required. Please provide a valid password.';
      case 'weak-password':
        return 'The password is too weak. Please choose a stronger password.';
      case 'invalid-credential':
        return 'The credential is invalid or expired. Please try again.';
      case 'requires-recent-login':
        return 'Sensitive action requires recent login. Please log in again.';
      default:
        return 'An unexpected Supabase error occurred. Please try again.';
    }
  }
}
