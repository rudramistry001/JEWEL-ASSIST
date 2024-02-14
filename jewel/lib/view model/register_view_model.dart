// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jewel/authentication/login_screen.dart';
import 'package:jewel/home_screen.dart';
import 'package:jewel/main.dart';
import 'package:jewel/model/register_model.dart';
import 'package:jewel/repository/register_repository.dart';
import 'package:jewel/utils/global_utils.dart';
import 'package:jewel/utils/loader.dart';

class RegisterViewModel extends ChangeNotifier {
  RegisterRepository registerRepository = RegisterRepository();

  Future registerUser(context, RegisterModel register) async {
    Loading loading = Loading(context);
    try {
      loading.startLoading();

      final response = await registerRepository.registerUser(register);

      if (response.statusCode == 200) {
        snackBarKey.currentState?.clearSnackBars();
        print("StatusCode ------------");
        print(response.statusCode);

        final jsonResponse = json.decode(response.body);
        if (jsonResponse.containsKey('message')) {
          snackBarKey.currentState?.showSnackBar(
            customSnackBar(
              message: jsonResponse['message'],
            ),
          );
        }
        // snackBarKey.currentState?.showSnackBar(
        //     customSnackBar(message: 'User Created Successfully'));
        loading.stopLoading();
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
            (route) => false);
        notifyListeners();
      } else {
        final jsonResponse = json.decode(response.body);
        if (jsonResponse.containsKey("error")) {
          snackBarKey.currentState?.showSnackBar(
            customSnackBar(
              message: jsonResponse["error"],
            ),
          );
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Exception at CREATING NEW USER : $e");
      }
      snackBarKey.currentState
          ?.showSnackBar(customSnackBar(message: e.toString()));
      loading.stopLoading();
    }
  }

  Future loginUser(context, RegisterModel loginUser) async {
    Loading loading = Loading(context);
    try {
      loading.startLoading();

      final response = await registerRepository.loginUser(loginUser);

      if (response.statusCode == 200) {
        // snackBarKey.currentState?.clearSnackBars();
        print("StatusCode for login User ------------");
        print(response.statusCode);
        final jsonResponse = json.decode(response.body);
        if (jsonResponse.containsKey("message")) {
          snackBarKey.currentState?.showSnackBar(
            customSnackBar(
              message: jsonResponse["message"],
            ),
          );
        }

        loading.stopLoading();
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const HomeScreen()),
          (Route<dynamic> route) => false,
        );
        notifyListeners();
      } else {
        final jsonResponse = json.decode(response.body);
        if (jsonResponse.containsKey("error")) {
          snackBarKey.currentState?.showSnackBar(
            customSnackBar(
              message: jsonResponse["error"],
            ),
          );
        }
      }
    } catch (e) {
      if (kDebugMode) {
        ("Exception at Logging in The User : $e");
        snackBarKey.currentState?.showSnackBar(
            customSnackBar(message: "Exception at Logging in The User : $e"));
      }
      snackBarKey.currentState
          ?.showSnackBar(customSnackBar(message: e.toString()));
      loading.stopLoading();
    }
  }
}
