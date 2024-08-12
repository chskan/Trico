import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_medication_modal_widget.dart' show AddMedicationModalWidget;
import 'package:flutter/material.dart';

class AddMedicationModalModel
    extends FlutterFlowModel<AddMedicationModalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for UserNameTextField widget.
  FocusNode? userNameTextFieldFocusNode1;
  TextEditingController? userNameTextFieldTextController1;
  String? Function(BuildContext, String?)?
      userNameTextFieldTextController1Validator;
  // State field(s) for UserNameTextField widget.
  FocusNode? userNameTextFieldFocusNode2;
  TextEditingController? userNameTextFieldTextController2;
  String? Function(BuildContext, String?)?
      userNameTextFieldTextController2Validator;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  LinkRecord? oldieLink;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userNameTextFieldFocusNode1?.dispose();
    userNameTextFieldTextController1?.dispose();

    userNameTextFieldFocusNode2?.dispose();
    userNameTextFieldTextController2?.dispose();
  }
}
