import '/flutter_flow/flutter_flow_util.dart';
import 'camera_widget.dart' show CameraWidget;
import 'package:flutter/material.dart';

class CameraModel extends FlutterFlowModel<CameraWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
