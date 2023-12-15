import 'package:get/get.dart';

class BaseController extends GetxController {
  var isLoading = false.obs;

  changeLoadingState() => isLoading.value = !isLoading.value;

  goPage(String routeName) => Get.offAndToNamed(routeName);
}
