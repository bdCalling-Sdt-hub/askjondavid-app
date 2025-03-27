class AppString {
  ///<====================== These are fro the validation ======================>

  static RegExp passRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.{8,}$)');

  static RegExp urlRegex = RegExp( r'^(http|https):\/\/[a-zA-Z0-9-\.]+\.[a-z]{2,4}(/\S*)?$');

  static RegExp emailRegexp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String fieldCanBeEmpty = "Field cannot be empty'";


  /// <====================== Bespoke Screen static ==============================>
  static String bespokeDescription = "Bespoke concierge services are highly personalized, tailored to individual needs and preferences, offering unique, customized experiences that exceed expectations and enhance overall satisfaction.";
  static const String bespokeServiceDetails = "Reliable Transportation: A private driver ensures that the individual is transported to all scheduled locations, whether for work, events, or personal errands. Punctuality and reliability are crucial elements in this role";

  ///======================== Private Service ================================
  static const String privateService = "A private driver ensures reliable, punctual transportation, route planning, vehicle maintenance, client comfort, safety, and confidentiality, offering a high level of discretion and service";
  static const String reliableTransportation = "Reliable Transportation: A private driver ensures that the individual is transported to all scheduled locations, whether for work, events, or personal errands. Punctuality and reliability are crucial elements in this role";
  static const String securityPersonnelManagement = "Security personnel management involves scheduling, task tracking, and real-time communication via an app, ensuring safety, emergency response, and data privacy for seamless, secure operations.";
  static const String securityPersonnelService = "Security personnel management uses an app for scheduling, task tracking, and real-time communication, ensuring safety, emergency response, and data privacy to maintain seamless, secure, and efficient operations";
  static const String uploadIdCart = "Make sure the photo contains all the information on the front face of the identity card (the one with your name). Remember the requirements are: - Minimum age: 18 years - Passports are not allowed Legal Notice: To continue with the process, YOU accept that AskJonDavid will perform a background check to create your driving partner account. This verification will be carried out by an Uber provider, it will have a cost that may vary by city and its value will be deducted from your earnings in the first trips on our platform.";

}
