import 'package:http/http.dart';
import 'package:http_interceptor/models/interceptor_contract.dart';

class AuthInterceptor implements InterceptorContract {
  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    // String? authToken = await StorageService().readSecureData('authToken');
    try {
      request.headers['Content-Type'] = 'application/json';
      // request.headers['Authorization'] = 'Bearer $authToken';
      // request.headers['CLIENT'] = 'Mobile';
      // request.headers['DOMAIN'] = 'work360';
      // request.headers['APP'] = 'work360';
    } catch (e) {
      throw e.toString();
    }
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse(
          {required BaseResponse response}) async =>
      response;

  @override
  Future<bool> shouldInterceptRequest() async {
    bool intercept = await getIntercept();
    return intercept;
  }

  @override
  Future<bool> shouldInterceptResponse() async {
    bool intercept = await getIntercept();
    return intercept;
  }

  getIntercept() {
    return true;
  }
}
