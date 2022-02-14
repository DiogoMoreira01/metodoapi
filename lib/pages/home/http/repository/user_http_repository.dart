import 'dart:convert';

import 'package:get/get.dart';
import 'package:getxapi/model/user_model.dart';
import 'package:getxapi/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    try {
      final response = await http
          .get(Uri.parse('https://6206543d92dd6600171c09ad.mockapi.io/users'));
      final List<dynamic> responseMap = jsonDecode(response.body);
      return responseMap
          .map<UserModel>((resp) => UserModel.fromMap(resp))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
