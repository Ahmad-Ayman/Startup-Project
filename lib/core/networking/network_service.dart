// ignore_for_file: avoid_catches_without_on_clauses, cast_nullable_to_non_nullable

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:startupproject/core/networking/remote_response.dart';

import 'interceptors.dart';

/// A Base Remote Service for all the app.
///
/// Has all the methods needed to comunicate with the server.
///
/// Handles [Error]s and [Exception]s respectfully.
///
/// Returns a sailed union of type [RemoteResponse] that contains:
///  * [RemoteResponse.data]
///  * [RemoteResponse.failure]
///  * [RemoteResponse.noConnection]
class RemoteService {
  final Dio _dio;
  var logger = Logger(
    printer: PrettyPrinter(
        methodCount: 2, // Number of method calls to be displayed
        errorMethodCount: 8, // Number of method calls if stacktrace is provided
        lineLength: 120, // Width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: false // Should each log print contain a timestamp
        ),
  );

  /// A Base Remote Service for all the app.
  ///
  /// Has all the methods needed to comunicate with the server.
  ///
  /// Handles [Error]s and [Exception]s respectfully.
  ///
  /// Returns a sailed union of type [RemoteResponse] that contains:
  ///  * [RemoteResponse.data]
  ///  * [RemoteResponse.failure]
  ///  * [RemoteResponse.noConnection]
  ///
  ///
  // static var shared = RemoteService(Dio());

  RemoteService(this._dio) {
    _dio
      ..options.connectTimeout = Duration(milliseconds: 1000)
      ..options.headers.addAll({'Accept': 'application/json'})
      ..options.responseType = ResponseType.plain
      ..interceptors.add(AuthInterceptor())
      ..options.validateStatus =
          (int? statusCode) => statusCode == 200 || statusCode == 400;
  }

  /// Perform a POST request.
  Future<RemoteResponse<dynamic>> httpPost(
    String api,
    dynamic body, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    logger.d("Debug log\nPost Method Call");

    logger.d("API URL: ${api}");
    if (body != null) logger.d("API Body:\n${body}");
    if (queryParameters != null) logger.d("API Query Paramaters:\n${api}");
    try {
      final response = await _dio.post(
        api,
        data: body,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );

      final dynamic responseData = jsonDecode(response.data);
      if (response.statusCode == 200) {
        logger.i("Info log");
        logger.i("Post Method Info");
        logger.i("Response: ${responseData}");
        return RemoteResponse.data(
          responseData,
        );
      } else if (response.statusCode == 400) {
        logger.e("Error log");
        logger.e("Post Method Error");
        logger.e("Post Method Status Code: ${response.statusCode}");
        logger.e("Error: ${responseData['message']}");
        return RemoteResponse.failure(
            responseData['message'], responseData['Status']);
      } else {
        logger.e("Error log");
        logger.e("Post Method Error");
        logger.e("Post Method Status Code: ${response.statusCode}");
        logger.e("Error: ${responseData['message']}");
        return RemoteResponse.failure(
            responseData['message'], responseData['Status']);
      }
    } on DioError catch (e) {
      logger.e("Error log");
      logger.e("Post Method Error");
      logger.e("Error: ${e.message}");
      if (e.isNoInternet) {
        return const RemoteResponse.noConnection();
      } else {
        return RemoteResponse.failure(e.message!, 0);
      }
    }
  }

  /// Perform a PATCH request.
  Future<RemoteResponse<dynamic>> httpPatch(
    String api,
    dynamic body, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    logger.d("Debug log");
    logger.d("Patch Method Call");
    logger.d("API URL: ${api}");
    if (body != null) logger.d("API Body:\n${body}");
    if (queryParameters != null) logger.d("API Query Paramaters:\n${api}");
    try {
      final response = await _dio.patch(
        api,
        data: body,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );

      final dynamic responseData = jsonDecode(response.data);

      if (response.statusCode == 200) {
        logger.i("Info log");
        logger.i("Patch Method Info");
        logger.i("Response:\n${responseData}");
        return RemoteResponse.data(
          responseData,
        );
      } else if (response.statusCode == 400) {
        logger.e("Error log");
        logger.e("Patch Method Error");
        logger.e("Patch Method Status Code: ${response.statusCode}");
        logger.e("Error: ${responseData['message']}");
        return RemoteResponse.failure(
            responseData['message'], responseData['Status']);
      } else {
        logger.e("Error log");
        logger.e("Patch Method Error");
        logger.e("Patch Method Status Code: ${response.statusCode}");
        logger.e("Error: ${responseData['message']}");
        return RemoteResponse.failure(
            responseData['message'], responseData['Status']);
      }
    } on DioError catch (e) {
      logger.e("Error log");
      logger.e("Patch Method Error");
      logger.e("Error: ${e.message}");
      if (e.isNoInternet) {
        return const RemoteResponse.noConnection();
      } else {
        return RemoteResponse.failure(e.message!, 0);
      }
    }
  }

  /// Perform a PATCH request.
  Future<RemoteResponse<dynamic>> httpPut(
    String api,
    dynamic body, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    logger.d("Debug log");
    logger.d("Put Method Call");
    logger.d("API URL: ${api}");
    if (body != null) logger.d("API Body:\n${body}");
    if (queryParameters != null) logger.d("API Query Paramaters:\n${api}");
    try {
      final response = await _dio.put(
        api,
        data: body,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );

      final dynamic responseData = jsonDecode(response.data);

      if (response.statusCode == 200) {
        logger.i("Info log");
        logger.i("Put Method Info");
        logger.i("Response:\n${responseData}");
        return RemoteResponse.data(
          responseData,
        );
      } else if (response.statusCode == 400) {
        logger.e("Error log");
        logger.e("Put Method Error");
        logger.e("Put Method Status Code: ${response.statusCode}");
        logger.e("Error: ${responseData['message']}");
        return RemoteResponse.failure(
            responseData['message'], responseData['Status']);
      } else {
        logger.e("Error log");
        logger.e("Put Method Error");
        logger.e("Put Method Status Code: ${response.statusCode}");
        logger.e("Error: ${responseData['message']}");
        return RemoteResponse.failure(
            responseData['message'], responseData['Status']);
      }
    } on DioError catch (e) {
      logger.e("Error log");
      logger.e("Put Method Error");
      logger.e("Error: ${e.message}");
      if (e.isNoInternet) {
        return const RemoteResponse.noConnection();
      } else {
        return RemoteResponse.failure(e.message!, 0);
      }
    }
  }

  /// Perform a GET request.
  Future<RemoteResponse<dynamic>> httpGet(
    String api, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    logger.d("Debug log");
    logger.d("Get Method Call");
    logger.d("API URL: ${api}");
    if (queryParameters != null) logger.d("API Query Paramaters:\n${api}");
    try {
      final response = await _dio.get(
        api,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );

      final dynamic responseData = jsonDecode(response.data);
      if (response.statusCode == 200) {
        logger.i("Info log");
        logger.i("Get Method Info");
        logger.i("Response:\n${responseData}");
        return RemoteResponse.data(
          responseData,
        );
      } else if (response.statusCode == 400) {
        logger.e("Error log");
        logger.e("Get Method Error");
        logger.e("Get Method Status Code: ${response.statusCode}");
        logger.e("Error: ${responseData['message']}");
        return RemoteResponse.failure(
            responseData['message'], responseData['Status']);
      } else {
        logger.e("Error log");
        logger.e("Get Method Error");
        logger.e("Get Method Status Code: ${response.statusCode}");
        logger.e("Error: ${responseData['message']}");
        return RemoteResponse.failure(
            responseData['message'], responseData['Status']);
      }
    } on DioError catch (e) {
      logger.e("Error log");
      logger.e("Get Method Error");
      logger.e("Error: ${e.message}");
      if (e.isNoInternet) {
        return const RemoteResponse.noConnection();
      } else {
        return RemoteResponse.failure(e.message!, 0);
      }
    }
  }

  /// Perform a DELETE request.
  Future<RemoteResponse<dynamic>> httpDelete(
    String api, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    logger.d("Debug log");
    logger.d("Delete Method Call");
    logger.d("API URL: ${api}");
    if (queryParameters != null) logger.d("API Query Paramaters:\n${api}");
    try {
      final response = await _dio.delete(
        api,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );

      final dynamic responseData = jsonDecode(response.data);

      if (response.statusCode == 200) {
        logger.i("Info log");
        logger.i("Delete Method Info");
        logger.i("Response:\n${responseData}");
        return RemoteResponse.data(
          responseData,
        );
      } else if (response.statusCode == 400) {
        logger.e("Error log");
        logger.e("Delete Method Error");
        logger.e("Delete Method Status Code: ${response.statusCode}");
        logger.e("Error: ${responseData['message']}");
        return RemoteResponse.failure(
            responseData['message'], responseData['Status']);
      } else {
        logger.e("Error log");
        logger.e("Delete Method Error");
        logger.e("Delete Method Status Code: ${response.statusCode}");
        logger.e("Error: ${responseData['message']}");
        return RemoteResponse.failure(
            responseData['message'], responseData['Status']);
      }
    } on DioError catch (e) {
      logger.e("Error log");
      logger.e("Delete Method Error");
      logger.e("Error: ${e.message}");
      if (e.isNoInternet) {
        return const RemoteResponse.noConnection();
      } else {
        return RemoteResponse.failure(e.message!, 0);
      }
    }
  }

  /// Downloads a file from a [url] to a givin [path].
  ///
  /// Returns a [Stream] of progress percentage.
  Stream<double> downloadWithProgres(String url, String path) async* {
    final controller = StreamController<double>();
    // content-type: [image/jpeg],
    // accept-ranges: [bytes], content-length: [601855],
    // [attachment; filename=asdasdsdf.docx; filename*=UTF-8''asdasdsdf.docx]
    _dio.download(
      url,
      (Headers headers) {
        if (!headers.map.containsKey('content-disposition')) {
          throw Exception(
              'No content-disposition found in the header to determin the size and Length.');
        }
        final fileType = (headers.map['content-disposition'] as List<String>)
            .first
            .split("''")
            .last;
        return '$path/$fileType';
      },
      onReceiveProgress: (count, total) {
        if (total == -1) {
          controller.sink.add(double.parse('1'));
        } else {
          final d = double.parse((count / total).toString());
          controller.sink.add(d);
        }
      },
    ).then((value) async {
      await controller.close();
    }).catchError((_) async {
      controller.sink.addError(_);
      await controller.close();
    });

    yield* controller.stream;
  }

  Future<void> download(String url, String path) async {
    await _dio.download(url, (Headers headers) {
      if (!headers.map.containsKey('content-disposition')) {
        throw Exception(
            'No content-disposition found in the header to determin the size and Length.');
      }
      final fileName = (headers.map['content-disposition'] as List<String>)
          .first
          .split(';')[1]
          .replaceAll('filename=', '')
          .trim();
      print('filename:$path/$fileName');
      return '$path/$fileName';
    });
  }
}

extension NoInternet on DioError {
  /// Returns `true` if the error is [SocketException].
  bool get isNoInternet =>
      type == DioErrorType.unknown && error is SocketException;
}
