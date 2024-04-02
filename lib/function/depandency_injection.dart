import 'package:get/get.dart';
import 'package:ipe_application/Controller/network_controller.dart';

class DependencyInjection {
  static void init() {
    Get.put<NetworkController>(NetworkController(), permanent: true);
  }
}
