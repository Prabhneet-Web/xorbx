import 'package:get/get.dart';

class AddPaymentMethodsController extends GetxController{
  Rx<String>? cardHolderName = "".obs;
  Rx<String>? cardName = "".obs;
  Rx<String>? expiry = "".obs;
  Rx<String>? cvv = "".obs;
  Rx<String>? billingAddress = "".obs;
}