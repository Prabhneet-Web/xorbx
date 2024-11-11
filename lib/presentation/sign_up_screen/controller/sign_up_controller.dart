import 'package:get/get.dart';

class SignUpController extends GetxController {
  var username = ''.obs;
  var email = ''.obs;
  var phoneNumber = ''.obs;
  var language = 'English'.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;
  var termsAccepted = false.obs;

  void toggleTermsAccepted() {
    termsAccepted.value = !termsAccepted.value;
  }

  void signUp() {
    // Add sign-up logic here
    print("Username: ${username.value}, Email: ${email.value}");
  }
}
