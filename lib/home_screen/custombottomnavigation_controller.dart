import 'package:get/get.dart';

class CustombottomnavigationController extends GetxController {
  var selectedindex = 0.obs;
  void changetab(var index) {
    selectedindex.value = index;
  }
}
