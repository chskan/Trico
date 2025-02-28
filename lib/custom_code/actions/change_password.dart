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

import 'package:firebase_auth/firebase_auth.dart' as auth;

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<bool> changePassword(
    String currentPassword, String newPassword, String email) async {
  try {
    auth.User? user = auth.FirebaseAuth.instance.currentUser;

    // Reauthenticate the user.
    auth.AuthCredential credential = auth.EmailAuthProvider.credential(
      email: email,
      password: currentPassword,
    );
    await user?.reauthenticateWithCredential(credential);

    // If reauthentication is successful, change the password.
    await user?.updatePassword(newPassword);

    // Password changed successfully.
    return true;
  } catch (e) {
    // Handle reauthentication errors and password change errors.
    return false;
  }
}
