import '/components/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';

class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NewPasswordTextField widget.
  FocusNode? newPasswordTextFieldFocusNode1;
  TextEditingController? newPasswordTextFieldTextController1;
  late bool newPasswordTextFieldVisibility1;
  String? Function(BuildContext, String?)?
      newPasswordTextFieldTextController1Validator;
  // State field(s) for NewPasswordTextField widget.
  FocusNode? newPasswordTextFieldFocusNode2;
  TextEditingController? newPasswordTextFieldTextController2;
  late bool newPasswordTextFieldVisibility2;
  String? Function(BuildContext, String?)?
      newPasswordTextFieldTextController2Validator;
  // State field(s) for ConfirmPasswordTextField widget.
  FocusNode? confirmPasswordTextFieldFocusNode;
  TextEditingController? confirmPasswordTextFieldTextController;
  late bool confirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextFieldTextControllerValidator;
  // Model for navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    newPasswordTextFieldVisibility1 = false;
    newPasswordTextFieldVisibility2 = false;
    confirmPasswordTextFieldVisibility = false;
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    newPasswordTextFieldFocusNode1?.dispose();
    newPasswordTextFieldTextController1?.dispose();

    newPasswordTextFieldFocusNode2?.dispose();
    newPasswordTextFieldTextController2?.dispose();

    confirmPasswordTextFieldFocusNode?.dispose();
    confirmPasswordTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
