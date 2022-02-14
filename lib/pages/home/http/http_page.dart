import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapi/model/user_model.dart';
import 'package:getxapi/pages/home/http/repository/http_controller.dart';

class HttpPage extends GetView<HttpController> {
  const HttpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP"),
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
