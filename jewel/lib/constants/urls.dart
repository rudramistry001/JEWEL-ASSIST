import 'package:jewel/constants/base_url.dart';

class UrlConstant {
  static const String uatUrl = "https://3c09-115-246-26-148.ngrok-free.app";
  static const String version = "/v1";

  // static const String uatUrl = "api-uat.softsages.com";
  static const String prodUrl = "services.softsages.com";
  static String baseUrl = BaseUrl().isProd ? prodUrl : uatUrl;

  static String register = "/register";

  static String login = "/login";
}
