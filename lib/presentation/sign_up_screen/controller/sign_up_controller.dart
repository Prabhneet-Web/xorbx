import 'package:get/get.dart';

class SignUpController extends GetxController {
  var username = ''.obs;
  var email = ''.obs;
  var phoneNumber = ''.obs;
  var selectedCountryCode = '+1 (US)'.obs;
  var selectedLanguage = 'English'.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;
  var rememberMe = false.obs;

  void toggleRememberMe() {
    rememberMe.value = !rememberMe.value;
  }

  void signUp() {
    if (_validateForm()) {
      print("Username: ${username.value}");
      print("Email: ${email.value}");
      print("Phone Number: ${phoneNumber.value}");
      print("Country Code: ${selectedCountryCode.value}");
      print("Language: ${selectedLanguage.value}");
      print("Password: ${password.value}");
      print("Confirm Password: ${confirmPassword.value}");
      print("Remember Me: ${rememberMe.value}");
    } else {
      print("Form is not valid");
    }
  }

  bool _validateForm() {
    if (username.value.isEmpty) {
      print("Username is required");
      return false;
    }
    if (email.value.isEmpty || !email.value.contains('@')) {
      print("Valid email is required");
      return false;
    }
    if (phoneNumber.value.isEmpty || phoneNumber.value.length < 10) {
      print("Phone number is required and should be valid");
      return false;
    }
    if (password.value.isEmpty || password.value.length < 6) {
      print("Password must be at least 6 characters long");
      return false;
    }
    if (confirmPassword.value != password.value) {
      print("Passwords do not match");
      return false;
    }
    return true;
  }
}
