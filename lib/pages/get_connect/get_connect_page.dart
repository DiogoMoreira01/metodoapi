import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/user_model.dart';
import 'get_connect_controller.dart';

class GetConnectPage extends GetView<GetConnectController> {
  const GetConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetConnect"),
      ),
      body: SafeArea(
        child: controller.obx((state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (context, index) {
              final UserModel item = state[index];
              return ListTile(
                title: Text(item.name),
              );
            },
          );
        }, onError: (error) {
          return Text(error!);
        }),
      ),
    );
  }
}
