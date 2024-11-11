import 'package:get/get.dart';

class SignInController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var rememberMe = false.obs;

  void toggleRememberMe() {
    rememberMe.value = !rememberMe.value;
  }

  void signIn() {
    // Add sign-in logic here
    print("Email: ${email.value}, Password: ${password.value}");
  }
}
