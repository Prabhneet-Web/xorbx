import 'package:get/get.dart';

class CustomerFeedbackController extends GetxController {
  var selectedRating = 0.obs;

  void updateRating(int rating) {
    selectedRating.value = rating;
  }
}
