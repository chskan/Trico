import '/flutter_flow/flutter_flow_util.dart';
import 'oldie_details_widget.dart' show OldieDetailsWidget;
import 'package:flutter/material.dart';

class OldieDetailsModel extends FlutterFlowModel<OldieDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for UserNameTextField widget.
  FocusNode? userNameTextFieldFocusNode;
  TextEditingController? userNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      userNameTextFieldTextControllerValidator;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode1;
  TextEditingController? emailTextFieldTextController1;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController1Validator;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode2;
  TextEditingController? emailTextFieldTextController2;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController2Validator;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode3;
  TextEditingController? emailTextFieldTextController3;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController3Validator;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode4;
  TextEditingController? emailTextFieldTextController4;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController4Validator;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode5;
  TextEditingController? emailTextFieldTextController5;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userNameTextFieldFocusNode?.dispose();
    userNameTextFieldTextController?.dispose();

    emailTextFieldFocusNode1?.dispose();
    emailTextFieldTextController1?.dispose();

    emailTextFieldFocusNode2?.dispose();
    emailTextFieldTextController2?.dispose();

    emailTextFieldFocusNode3?.dispose();
    emailTextFieldTextController3?.dispose();

    emailTextFieldFocusNode4?.dispose();
    emailTextFieldTextController4?.dispose();

    emailTextFieldFocusNode5?.dispose();
    emailTextFieldTextController5?.dispose();
  }
}
