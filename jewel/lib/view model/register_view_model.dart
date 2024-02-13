import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jewel/authentication/login_screen.dart';
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

        snackBarKey.currentState?.showSnackBar(
            customSnackBar(message: 'Assignment Created Successfully'));
        loading.stopLoading();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
        Navigator.pop(context);
        notifyListeners();
      }
    } catch (e) {
      if (kDebugMode) {
        print("Exception at createAssignment() : $e");
      }
      // snackBarKey.currentState
      //     ?.showSnackBar(customSnackBar(message: e.toString()));
      // loading.stopLoading();
    }
  }
}
