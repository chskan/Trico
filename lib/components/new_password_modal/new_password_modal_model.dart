import '/flutter_flow/flutter_flow_util.dart';
import 'new_password_modal_widget.dart' show NewPasswordModalWidget;
import 'package:flutter/material.dart';

class NewPasswordModalModel extends FlutterFlowModel<NewPasswordModalWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for oldPassword widget.
  FocusNode? oldPasswordFocusNode;
  TextEditingController? oldPasswordTextController;
  late bool oldPasswordVisibility;
  String? Function(BuildContext, String?)? oldPasswordTextControllerValidator;
  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  // Stores action output result for [Custom Action - changePassword] action in Button widget.
  bool? result;

  @override
  void initState(BuildContext context) {
    oldPasswordVisibility = false;
    newPasswordVisibility = false;
  }

  @override
  void dispose() {
    oldPasswordFocusNode?.dispose();
    oldPasswordTextController?.dispose();

    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();
  }
}
