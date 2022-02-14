import 'package:get/get.dart';
import 'package:getxapi/pages/home/http/repository/http_controller.dart';
import 'package:getxapi/pages/home/http/repository/user_http_repository.dart';
import 'package:getxapi/repository/i_user_repository.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
