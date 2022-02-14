import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapi/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guia de acesso API"),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => Get.toNamed(Routes.HTTP),
              child: const Text(
                "HTTP",
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed(Routes.GetConectX),
              child: const Text(
                "GetConnect",
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "DIO",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
