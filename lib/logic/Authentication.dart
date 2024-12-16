import 'dart:convert';

import 'package:http/http.dart' as http;

class Authentication {
  static String baseurl = "http://10.0.2.2:8080";

  static Future<String> generateJWTfromregister(
      String username, String email, String password) async {
    String output = "Failed to register ";
    final url = Uri.parse("$baseurl/register");
    try {
      final response = await http.post(
        url,
        body: jsonEncode(
            {"username": username, "email": email, "password": password}),
      );
      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        output = responseBody.toString();
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  static Future<String> generateJWTfromlogin(
      String username, String password) async {
    String output = "Failed to log in ";
    final url = Uri.parse("$baseurl/login");
    try {
      final response = await http.post(
        url,
        body: jsonEncode({"username": username, "password": password}),
      );
      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        output = responseBody.toString();
      }
    } catch (e) {
      print(e);
    }
    return output;
  }
}
