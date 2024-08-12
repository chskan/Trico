import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendAccountVerifCall {
  static Future<ApiCallResponse> call({
    String? sendTo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "$sendTo"
        }
      ],
      "dynamic_template_data": {
        "subject": "[TRICO] Account Verification"
      }
    }
  ],
  "template_id": "d-9eb4d2e838084e94b1b18d9df29fb657"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendAccountVerif',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TranscriptCall {
  static Future<ApiCallResponse> call({
    String? url = '',
  }) async {
    final ffApiRequestBody = '''
{
  "url": "$url"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Transcript',
      apiUrl:
          'https://api.deepgram.com/v1/listen?model=nova-2&smart_format=true',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token fd720e875975351fbf0896b235955bd0e85416be',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? resultTranscript(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.results.channels[:].alternatives[:].transcript''',
      ));
}

class AddVoiceCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    List<FFUploadedFile>? filesList,
  }) async {
    final files = filesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'addVoice',
      apiUrl: 'https://api.elevenlabs.io/v1/voices/add',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type':
            'multipart/form-data; boundary=---011000010111000001101001',
        'xi-api-key': 'sk_f32729b7712b3ebcf67a86e3ca030ec1d8eed101556695d8',
      },
      params: {
        'name': name,
        'files': files,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditVoiceCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    List<FFUploadedFile>? filesList,
    String? voiceId = '',
  }) async {
    final files = filesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'editVoice ',
      apiUrl: 'https://api.elevenlabs.io/v1/voices/$voiceId/edit',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type':
            'multipart/form-data; boundary=---011000010111000001101001',
        'xi-api-key': 'sk_f32729b7712b3ebcf67a86e3ca030ec1d8eed101556695d8',
      },
      params: {
        'name': name,
        'files': files,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
