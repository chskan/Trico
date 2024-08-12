import '/flutter_flow/flutter_flow_util.dart';
import 'update_profile_image_bottom_sheet_widget.dart'
    show UpdateProfileImageBottomSheetWidget;
import 'package:flutter/material.dart';

class UpdateProfileImageBottomSheetModel
    extends FlutterFlowModel<UpdateProfileImageBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
