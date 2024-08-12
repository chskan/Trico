import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCSZg01hGjhh5VYpAK3hFulTZ6Wz_3p9lI",
            authDomain: "oldie-care-ubp456.firebaseapp.com",
            projectId: "oldie-care-ubp456",
            storageBucket: "oldie-care-ubp456.appspot.com",
            messagingSenderId: "646591202266",
            appId: "1:646591202266:web:b685c9a25ba14524e536e3"));
  } else {
    await Firebase.initializeApp();
  }
}
