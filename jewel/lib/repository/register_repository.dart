import 'package:jewel/model/register_model.dart';
import 'package:jewel/services/register_services.dart';

class RegisterRepository {
  RegisterServices registerServices = RegisterServices();

  Future registerUser(RegisterModel register) async {
    final response = await registerServices.registerUser(register);
    return response;
  }

  Future loginUser(RegisterModel loginUser) async {
    final response = await registerServices.loginUser(loginUser);
    return response;
  }
}
