import 'package:flutter_getx_calculator/src/controller/app_controller.dart';
import 'package:get/instance_manager.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController(), permanent: true);
  }
}
