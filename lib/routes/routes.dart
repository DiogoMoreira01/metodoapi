// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:getxapi/pages/home/http/http_page.dart';
import 'package:getxapi/pages/home/http/repository/http_bindings.dart';
import 'package:getxapi/pages/home_page.dart';

import '../pages/get_connect/get_connect_binding.dart';
import '../pages/get_connect/get_connect_page.dart';

class Routes {
  static const HOME = '/home';
  static const HTTP = '/http';
  static const DIO = '/dio';
  static const GetConectX = '/getconectx';
}

List<GetPage<dynamic>> routes = [
  GetPage(name: '/home', page: () => const HomePage()),
  GetPage(
    name: '/http',
    page: () => const HttpPage(),
    binding: HttpBindings(),
  ),
  GetPage(
    name: '/getconectx',
    page: () => const GetConnectPage(),
    binding: GetConnectBinding(),
  ),
];
