import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'details_widget.dart' show DetailsWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class DetailsModel extends FlutterFlowModel<DetailsWidget> {
  ///  Local state fields for this page.

  bool isRecording = false;

  List<FFUploadedFile> filesToAddOrEdit = [];
  void addToFilesToAddOrEdit(FFUploadedFile item) => filesToAddOrEdit.add(item);
  void removeFromFilesToAddOrEdit(FFUploadedFile item) =>
      filesToAddOrEdit.remove(item);
  void removeAtIndexFromFilesToAddOrEdit(int index) =>
      filesToAddOrEdit.removeAt(index);
  void insertAtIndexInFilesToAddOrEdit(int index, FFUploadedFile item) =>
      filesToAddOrEdit.insert(index, item);
  void updateFilesToAddOrEditAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      filesToAddOrEdit[index] = updateFn(filesToAddOrEdit[index]);

  bool isCallTriggered = false;

  ///  State fields for stateful widgets in this page.

  String? recordOutput;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - API (Transcript)] action in Container widget.
  ApiCallResponse? audioTranscript;
  // Stores action output result for [Backend Call - API (editVoice )] action in Container widget.
  ApiCallResponse? apiResultikn;
  // Stores action output result for [Backend Call - API (addVoice)] action in Container widget.
  ApiCallResponse? apiVoiceAddResult;
  AudioRecorder? audioRecorder;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
