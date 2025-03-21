class AppString {
  ///<====================== These are fro the validation ======================>

  static RegExp passRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.{8,}$)');

  static RegExp urlRegex = RegExp( r'^(http|https):\/\/[a-zA-Z0-9-\.]+\.[a-z]{2,4}(/\S*)?$');

  static RegExp emailRegexp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String fieldCanBeEmpty = "Field cannot be empty'";


  /// <====================== Bespoke Screen static ==============================>
  static String bespokeDescription = "Bespoke concierge services are highly personalized, tailored to individual needs and preferences, offering unique, customized experiences that exceed expectations and enhance overall satisfaction.";

}
