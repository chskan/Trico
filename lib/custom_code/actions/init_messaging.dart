// Automatic FlutterFlow imports
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_callkit_incoming/entities/entities.dart';
import 'package:flutter_callkit_incoming/flutter_callkit_incoming.dart';
import 'package:trico/navigation_key.dart';
import 'package:uuid/uuid.dart';

import '/backend/backend.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/flutter_flow_util.dart';

Future initMessaging() async {
  //FCM
  await Firebase.initializeApp();

  FirebaseMessaging.instance.requestPermission().then((settings) {
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      FirebaseMessaging.instance.getToken().then((token) {
        FFAppState().FCM = token ?? 'No token';
      });
    } else {
      FFAppState().FCM = 'No token';
    }
  });

  await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
            channelKey: 'alerts',
            channelName: 'Alerts',
            channelDescription: 'Medication alert reminder',
            playSound: true,
            onlyAlertOnce: true,
            groupAlertBehavior: GroupAlertBehavior.Children,
            importance: NotificationImportance.High,
            defaultPrivacy: NotificationPrivacy.Private,
            defaultColor: Color(0xd2adf6),
            ledColor: Color(0xd2adf6))
      ],
      debug: true);

  FirebaseMessaging.onBackgroundMessage(actions.firebaseMessagingBackgroundHandler);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
    print('message recieved : ${message.notification?.title}');
    if (message.data['type'] == 'Medication') {
      await AwesomeNotifications().createNotification(
          content: NotificationContent(
              id: -1, channelKey: 'alerts', title: message.notification?.title ?? 'Notification', body: message.notification?.body ?? 'Body', payload: {'notificationId': '1234567890'}),
          actionButtons: [NotificationActionButton(key: 'DISMISS', label: 'Dismiss', actionType: ActionType.DismissAction, isDangerousOption: true)]);
    } else if (message.data['type'] == 'Call') {
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
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
