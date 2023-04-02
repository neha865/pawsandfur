import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? useremail = '',
    String? userpassword = '',
  }) {
    final body = '''
{
  "email": "${useremail}",
  "password": "${userpassword}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'http://pawsfurandtail.com/app/login.php',
      callType: ApiCallType.POST,
      headers: {
        'Vary': 'Accept-Encoding',
        'Content-Encoding': 'gzip',
        'Content-Length': '89',
        'Keep-Alive': 'timeout=5,max=100',
        'Connection': 'Keep-Alive',
        'Content-Type': 'text/html; charset=UTF-8',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class HomepageCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'homepage',
      apiUrl: 'http://pawsfurandtail.com/app/home.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic cat2(dynamic response) => getJsonField(
        response,
        r'''$.data.2''',
        true,
      );
  static dynamic cat2items(dynamic response) => getJsonField(
        response,
        r'''$.data.2.items''',
        true,
      );
  static dynamic cat3(dynamic response) => getJsonField(
        response,
        r'''$.data.3''',
        true,
      );
  static dynamic cat3items(dynamic response) => getJsonField(
        response,
        r'''$.data.3.items''',
        true,
      );
  static dynamic cat2title(dynamic response) => getJsonField(
        response,
        r'''$.data.2.title''',
        true,
      );
  static dynamic cat3title(dynamic response) => getJsonField(
        response,
        r'''$.data.3.title''',
        true,
      );
  static dynamic cat4title(dynamic response) => getJsonField(
        response,
        r'''$.data.4.title''',
        true,
      );
  static dynamic cat4items(dynamic response) => getJsonField(
        response,
        r'''$.data.4.items''',
        true,
      );
  static dynamic cat6title(dynamic response) => getJsonField(
        response,
        r'''$.data.6.title''',
        true,
      );
  static dynamic cat6items(dynamic response) => getJsonField(
        response,
        r'''$.data.6.items''',
        true,
      );
  static dynamic cat5title(dynamic response) => getJsonField(
        response,
        r'''$.data.5.title''',
        true,
      );
  static dynamic cat5items(dynamic response) => getJsonField(
        response,
        r'''$.data.5.items''',
        true,
      );
  static dynamic cat4id(dynamic response) => getJsonField(
        response,
        r'''$.data.4.items[:].brands_id''',
        true,
      );
  static dynamic cat4name(dynamic response) => getJsonField(
        response,
        r'''$.data.4.items[:].brands_name''',
        true,
      );
  static dynamic cat4image(dynamic response) => getJsonField(
        response,
        r'''$.data.4.items[:].brands_image''',
        true,
      );
  static dynamic cat4desc(dynamic response) => getJsonField(
        response,
        r'''$.data.4.items[:].brands_description''',
        true,
      );
  static dynamic cat4date(dynamic response) => getJsonField(
        response,
        r'''$.data.4.items[:].brands_date_create''',
        true,
      );
  static dynamic cat5prodname(dynamic response) => getJsonField(
        response,
        r'''$.data.5.items[:].product_name''',
        true,
      );
  static dynamic cat5img(dynamic response) => getJsonField(
        response,
        r'''$.data.5.items[:].product_image''',
        true,
      );
  static dynamic cat5price(dynamic response) => getJsonField(
        response,
        r'''$.data.5.items[:].product_price''',
        true,
      );
  static dynamic cat5discount(dynamic response) => getJsonField(
        response,
        r'''$.data.5.items[:].product_discount''',
        true,
      );
  static dynamic slider(dynamic response) => getJsonField(
        response,
        r'''$.data.1.items[:].slider_image''',
        true,
      );
  static dynamic cat5data(dynamic response) => getJsonField(
        response,
        r'''$.data.5''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
