import 'package:get/get.dart';
import 'package:woo/common/index.dart';
import 'package:woo/pages/index.dart';

class MyIndexController extends GetxController {
  MyIndexController();

  _initData() {
    update(["my_index"]);
  }

  void onTap() {}

   // 注销
  void onLogout() {
    UserService.to.logout();
    Get.find<MainController>().onJumpToPage(0);
  }

  // 地址编辑页 type 1 billing 2 shipping
  void onToAddress(String type) {
    Get.toNamed(RouteNames.myMyAddress, arguments: {"type": type});
  }


  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
