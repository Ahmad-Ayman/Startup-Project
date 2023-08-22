import 'dart:io';

/// [ApiConstants] class
///
/// Contains API constants [BaseURL, EndPoints, Headers] to easily access and modify Test
///
class ApiConstants {
  static String baseUrl = '';
  /* static String imageCategoryUrl(String imageName) =>
  //     '${mainUrl}upload/category/${imageName}'; */

  static Map<String, String> headersWithToken(dynamic token) => {
        HttpHeaders.authorizationHeader: 'Bearer $token',
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      };
}
