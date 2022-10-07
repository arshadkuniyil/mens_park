enum ErrorEnum { networkError, unknownError, noError, inCompleteError }

enum SignUpWithPhoneStatus {
  notStarted,
  loading,
  networkError,
  codeSent,
  invalidPhoneNumber,
  invalidVerificationId
}

enum PhoneSignInStatus {
  notStarted,
  loading,
  success,
  codeResent,
  networkError,
  invalidVerificationCode,
  invalidVerificationId,
  unknownError,
  smsLimitExceed,
  signInWithGoogleSuccess,
  signInWithGoogleFailed
}


enum UserStatus{
  loading,
  userExist,
  userNotExist,
  otpVerificationPending,
}