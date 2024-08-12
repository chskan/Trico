// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> addVoiceAction(
  String? name,
  String? voiceAudio,
) async {
  // Add your function code here!
  final url = Uri.parse('https://api.elevenlabs.io/v1/voices/add');
  final request = http.MultipartRequest('POST', url);
  //var
  String voiceID = "";
  // Set the headers
  request.headers.addAll({
    'Content-Type': 'multipart/form-data',
    // Add other headers if needed
  });

  // Add fields
  request.fields['name'] = name!;
  request.fields['description'] = "$name's Voice";
  //request.fields['labels'] = '<string>';

  // Add files
  // If you need to add multiple files, use the following approach:
  final filePaths = [voiceAudio]; // List of file paths to upload

  for (var filePath in filePaths) {
    final file = File(filePath!);
    final fileStream = file.openRead();
    final length = await file.length();
    final multipartFile = http.MultipartFile(
      'files',
      fileStream,
      length,
      filename: file.uri.pathSegments.last,
      //contentType: MediaType('application', 'octet-stream'),
    );
    request.files.add(multipartFile);
  }

  try {
    // Send the request
    final response = await request.send();
    final responseBody = await response.stream.bytesToString();

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(responseBody);
      print('Response data: $jsonResponse');
      voiceID = jsonResponse['voice_id'];
    } else {
      print('Request failed with status: ${response.statusCode}');
      print('Response body: $responseBody');
    }
  } catch (e) {
    print('An error occurred: $e');
  }

  return voiceID;
}
