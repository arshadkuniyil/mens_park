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
  notStarted,
  loading,
  success,
  failed,
  networkError,
  invalidVerificationCode,
  invalidVerificationId,
  unknownError
}
