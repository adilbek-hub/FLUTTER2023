import 'package:flesh_chat_j/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../../utils/app_dialog.dart';
import '../services/home_services.dart';

class HomeController extends GetxController {
  Future<void> logout() async {
    AppDialog.showLoading();
    await HomeServices.logout();
    await Get.offAllNamed(Routes.FLASH_CHAT);
  }

  Future<void> delete() async {
    AppDialog.showLoading();
    await HomeServices.delete();
    await Get.offAllNamed(Routes.FLASH_CHAT);
  }
}
