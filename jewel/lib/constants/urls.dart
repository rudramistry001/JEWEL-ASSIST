import 'package:jewel/constants/base_url.dart';

class UrlConstant {
  static const String uatUrl = "2703-115-246-26-148.ngrok-free.app/v1";
  // static const String uatUrl = "api-uat.softsages.com";
  static const String prodUrl = "services.softsages.com";
  static String baseUrl = BaseUrl().isProd ? prodUrl : uatUrl;

  static String register = "/register";
}

