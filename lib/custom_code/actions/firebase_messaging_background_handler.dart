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
import 'package:trico/navigation_key.dart';
import 'package:trico/custom_code/widgets/speech_screen.dart';

// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart'
    as actions; // Imports other custom actions
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_callkit_incoming/flutter_callkit_incoming.dart';
import 'package:flutter_callkit_incoming/entities/entities.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(dynamic remoteMessage) async {
  // Add your function code here!
  await Firebase.initializeApp();

  RemoteMessage message = remoteMessage as RemoteMessage;

  if (message.data['type'] == 'Call') {
    final params = CallKitParams(
      id: Uuid().v4(),
      nameCaller: message.data['caller'],
      appName: 'Demo',
      avatar: message.data['avatar'],
      handle: '123456',
      type: 0,
      textAccept: 'Accept',
      textDecline: 'Decline',
      duration: 30000,
      extra: {'userId': message.data['id']},
      android: const AndroidParams(
        isCustomNotification: true,
        isShowLogo: false,
        ringtonePath: 'system_ringtone_default',
        backgroundColor: '#FFF8F0',
        actionColor: '#D2ADF6',
        incomingCallNotificationChannelName: 'Incoming call',
        missedCallNotificationChannelName: 'Missed call',
      ),
      ios: const IOSParams(
        iconName: 'Call Demo',
        handleType: 'generic',
        supportsVideo: true,
        maximumCallGroups: 2,
        maximumCallsPerCallGroup: 1,
        audioSessionMode: 'default',
        audioSessionActive: true,
        audioSessionPreferredSampleRate: 44100.0,
        audioSessionPreferredIOBufferDuration: 0.005,
        supportsDTMF: true,
        supportsHolding: true,
        supportsGrouping: false,
        ringtonePath: 'system_ringtone_default',
      ),
    );
    await FlutterCallkitIncoming.showCallkitIncoming(params);
    /* 
    TRIGGER AI W/ Call screen
    */
    FlutterCallkitIncoming.onEvent.listen((CallEvent? event) {
      switch (event!.event) {
        case Event.actionCallAccept:
          //received an incoming call
          NavigationKey.navigationKey.currentState!.context
              .pushNamed('Speech', queryParameters: {'data': serializeParam(message.data, ParamType.JSON)}, extra: <String, dynamic>{'data': message.data});

          break;
        default:
      }
    });
    /* 
    TRIGGER AI W/ Call screen
    */
  }
}
