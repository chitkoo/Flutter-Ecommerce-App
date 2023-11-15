import 'package:get/get.dart';

import 'navbar_controller.dart';

class GlobalController extends GetxController {
  static init() {
    Get.put(NavbarController());
  }
}
