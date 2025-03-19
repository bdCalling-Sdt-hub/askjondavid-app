class AppString {
  ///<====================== These are fro the validation ======================>

  static RegExp passRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.{8,}$)');

  static RegExp urlRegex = RegExp( r'^(http|https):\/\/[a-zA-Z0-9-\.]+\.[a-z]{2,4}(/\S*)?$');

  static RegExp emailRegexp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String fieldCanBeEmpty = "Field cannot be empty'";


  /// <====================== Sign in Page static ==============================>
  static String signInScreenTitle = "Welcome!";
  static String signInScreenDescription = "Sign in to continue";

  /// <====================== Sign in Page static ==============================>
  static String signUpScreenTitle = "Register Now";
  static String signUpScreenDescription = "To proceed with your application, we first need some information from you";

  /// <====================== Forgot Password Page static ==============================>
  static String forgotPasswordScreenTitle = "Forgot password";
  static String forgotPasswordScreenDescription = "Please enter your email for verify you account";

  /// <====================== OtpVerification Page static ==============================>
  static String otpVerificationScreenTitle = "Enter 6 digits code";
  static String otpVerificationScreenScreenDescription = "Enter the six-digit code that was emailed to you";
  static String resendTimeMessage = "This code will expire in ";

  /// <====================== Create New Password Page static ==============================>
  static String createNewPasswordScreenTitle = "Create New Password";
  static String createNewPasswordScreenDescription = "Your new password must be different from previous passwords";

  /// <====================== Interest Selection Page static ==============================>
  static String interestSelectionScreenTitle = "Choose your interest";

 /// <====================== Menu=> Setting and delete Account page ==============================>
  static String passwordMessage = "Your new password must be different from previous passwords";
  static String passwordConfirmedMessage = "Please confirm your password to remove your account";

}
