// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:http_interceptor/http_interceptor.dart';
// import 'package:jewel/constants/exception_constants.dart';
// import 'package:jewel/constants/urls.dart';

// class BaseApiProvider {
//   Client client = InterceptedClient.build(
//       //interceptors: [AuthInterceptor()],
//       // retryPolicy: ExpiredTokenRetryPolicy(),
//       );

//   final String baseUrl = UrlConstant.baseUrl;

//   Uri getRequestUri({String path = '', Map<String, dynamic>? queryParameters}) {
//     return Uri.http(
//       path.contains('core') ? 'localhost:6040' : baseUrl,
//       // baseUrl,
//       path,
//       queryParameters,
//     );
//   }

//   int timeout = 20;
//   Future<Response> getRequest(Uri uri,
//       {Map<String, String>? headers = const {}}) async {
//     try {
//       return await client
//           .get(uri, headers: headers)
//           .timeout(Duration(seconds: timeout));
//     } on SocketException {
//       throw ExceptionConstant.noInternetError;
//     } on TimeoutException {
//       throw ExceptionConstant.connectionTimeOutError;
//     }
//   }

//   Future<Response> postRequest(Uri uri, Map<String, dynamic>? body,
//       {Map<String, String>? headers = const {}}) async {
//     try {
//       return await client
//           .post(uri, headers: headers, body: json.encode(body))
//           .timeout(Duration(seconds: timeout));
//     } on SocketException {
//       throw ExceptionConstant.noInternetError;
//     } on TimeoutException {
//       throw ExceptionConstant.connectionTimeOutError;
//     }
//   }

//   Future<Response> postRequestWithoutBody(Uri uri,
//       {Map<String, String>? headers = const {}}) async {
//     try {
//       return await client
//           .post(uri, headers: headers)
//           .timeout(Duration(seconds: timeout));
//     } on SocketException {
//       throw ExceptionConstant.noInternetError;
//     } on TimeoutException {
//       throw ExceptionConstant.connectionTimeOutError;
//     }
//   }

//   Future<Response> postRequestWithStringBody(Uri uri, String? body,
//       {Map<String, String>? headers = const {}}) async {
//     try {
//       return await client
//           .post(uri, headers: headers, body: body)
//           .timeout(Duration(seconds: timeout));
//     } on SocketException {
//       throw ExceptionConstant.noInternetError;
//     } on TimeoutException {
//       throw ExceptionConstant.connectionTimeOutError;
//     }
//   }

//   Future<Response> postRequestWithFileBody(Uri uri, File? file,
//       {Map<String, String>? headers = const {}}) async {
//     try {
//       return await client
//           .post(uri, headers: headers, body: file?.readAsBytesSync())
//           .timeout(Duration(seconds: timeout));
//     } on SocketException {
//       throw ExceptionConstant.noInternetError;
//     } on TimeoutException {
//       throw ExceptionConstant.connectionTimeOutError;
//     }
//   }

//   Future<Response> patchRequest(Uri uri, Map<String, dynamic>? body,
//       {Map<String, String>? headers = const {}}) async {
//     try {
//       return await client
//           .patch(uri, headers: headers, body: json.encode(body))
//           .timeout(Duration(seconds: timeout));
//     } on SocketException {
//       throw ExceptionConstant.noInternetError;
//     } on TimeoutException {
//       throw ExceptionConstant.connectionTimeOutError;
//     }
//   }

//   Future<Response> patchRequestWithStringBody(Uri uri, String? body,
//       {Map<String, String>? headers = const {}}) async {
//     try {
//       return await client
//           .patch(uri, headers: headers, body: body)
//           .timeout(Duration(seconds: timeout));
//     } on SocketException {
//       throw ExceptionConstant.noInternetError;
//     } on TimeoutException {
//       throw ExceptionConstant.connectionTimeOutError;
//     }
//   }

//   Future<Response> deleteRequest(Uri uri,
//       {Map<String, String>? headers = const {}}) async {
//     try {
//       return await client
//           .delete(uri, headers: headers)
//           .timeout(Duration(seconds: timeout));
//     } on SocketException {
//       throw ExceptionConstant.noInternetError;
//     } on TimeoutException {
//       throw ExceptionConstant.connectionTimeOutError;
//     }
//   }

//   Future<Response> deleteRequestWithList(Uri uri, String? body,
//       {Map<String, String>? headers = const {}}) async {
//     try {
//       return await client
//           .delete(uri, body: body, headers: headers)
//           .timeout(Duration(seconds: timeout));
//     } on SocketException {
//       throw ExceptionConstant.noInternetError;
//     } on TimeoutException {
//       throw ExceptionConstant.connectionTimeOutError;
//     }
//   }

//   // handleError(errorResponse) async {
//   //   try {
//   //     Map data = jsonDecode(errorResponse.body);
//   //     if (errorResponse.statusCode == 401) {
//   //       final prefs = await SharedPreferences.getInstance();
//   //       prefs.clear();
//   //       navigatorKey.currentState?.pushAndRemoveUntil(
//   //           MaterialPageRoute(builder: (context) => const LogInPage()),
//   //           (Route<dynamic> route) => false);
//   //       throw ExceptionConstant.loggedOutError;
//   //     } else if (data.containsKey("errorMessage")) {
//   //       throw data["errorMessage"];
//   //     } else if (data.containsKey("message")) {
//   //       throw data["message"];
//   //     } else {
//   //       throw ExceptionConstant.genericError;
//   //     }
//   //   } on FormatException {
//   //     throw ExceptionConstant.genericError;
//   //   } catch (e) {
//   //     throw e.toString();
//   //   }
//   // }
// }
