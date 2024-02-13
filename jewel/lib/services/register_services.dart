// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jewel/model/register_model.dart';

class RegisterServices {
  Future<Map<String, dynamic>> postRequest(
      Uri uri, Map<String, dynamic> body) async {
    final response = await http.post(uri, body: body);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to post request: ${response.statusCode}');
    }
  }

  Future<dynamic> registerUser(RegisterModel registerModel) async {
    var body = registerModel.toJson();

    try {
      final response = await postRequest(
          Uri.parse('https://2703-115-246-26-148.ngrok-free.app/v1/register'),
          body);
      // You can handle the response here according to your requirements
      return response;
    } catch (e) {
      // Handle errors such as network issues or server errors
      print('Error in registering the user: $e');
      rethrow; // Rethrow the error to be handled at the caller level if needed
    }
  }
}
