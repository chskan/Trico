import '/flutter_flow/flutter_flow_util.dart';
import 'add_mile_stone_modal_widget.dart' show AddMileStoneModalWidget;
import 'package:flutter/material.dart';

class AddMileStoneModalModel extends FlutterFlowModel<AddMileStoneModalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MilestoneName widget.
  FocusNode? milestoneNameFocusNode;
  TextEditingController? milestoneNameTextController;
  String? Function(BuildContext, String?)? milestoneNameTextControllerValidator;
  // State field(s) for MilestoneDescription widget.
  FocusNode? milestoneDescriptionFocusNode;
  TextEditingController? milestoneDescriptionTextController;
  String? Function(BuildContext, String?)?
      milestoneDescriptionTextControllerValidator;
  // State field(s) for MilestoneDate widget.
  FocusNode? milestoneDateFocusNode;
  TextEditingController? milestoneDateTextController;
  String? Function(BuildContext, String?)? milestoneDateTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    milestoneNameFocusNode?.dispose();
    milestoneNameTextController?.dispose();

    milestoneDescriptionFocusNode?.dispose();
    milestoneDescriptionTextController?.dispose();

    milestoneDateFocusNode?.dispose();
    milestoneDateTextController?.dispose();
  }
}
