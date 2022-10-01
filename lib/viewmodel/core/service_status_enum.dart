enum ErrorEnum { networkError, unknownError, noError, inCompleteError }

enum SignUpWithPhoneStatus {
  notStarted,
  loading,
  networkError,
  codeSent,
  invalidPhoneNumber,
  invalidVerificationId
}

enum SignInStatus {
  loading,
  success,
  failed,
  unknownError,
}
