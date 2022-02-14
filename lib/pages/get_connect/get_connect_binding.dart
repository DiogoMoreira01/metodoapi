import 'package:get/get.dart';
import 'package:getxapi/pages/get_connect/get_connect_controller.dart';
import 'package:getxapi/pages/get_connect/repository/user_repository_get_connect.dart';
import 'package:getxapi/repository/i_user_repository.dart';
import 'package:getxapi/repository/shared/rest_client.dart';

class GetConnectBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
    Get.put<IUserRepository>(UserRepositoryGetConnect(Get.find()));
    Get.put(GetConnectController(Get.find()));
  }
}
