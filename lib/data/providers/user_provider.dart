import 'package:http/http.dart' as http;
import '../models/user.dart';
import 'dart:convert';

class UserProvider {
  Future<Map<String, dynamic>> getDataUser() async {
    try {
      Uri url = Uri.parse("https://ttreqres.in/api/users");
      var response = await http.get(url);

      if (response.statusCode != 200) {
        return {
          "error": true,
          "message": "${response.statusCode}",
        };
      }

      Map<String, dynamic> body = jsonDecode(response.body);

      return {
        "error": false,
        "message": "Berhasil get data user",
        "data": UserModel.fromJson(body),
      };
    } catch (e) {
      return {
        "error": true,
        "message": "$e",
      };
    }
  }
}
