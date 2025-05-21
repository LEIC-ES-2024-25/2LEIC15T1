import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'camera_page_widget.dart' show CameraPageWidget;
import 'package:flutter/material.dart';

class CameraPageModel extends FlutterFlowModel<CameraPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for productName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for productcategoryName widget.
  FocusNode? productcategoryNameFocusNode;
  TextEditingController? productcategoryNameTextController;
  String? Function(BuildContext, String?)?
      productcategoryNameTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChallengesRecord>? newChallenges;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UserChallengesRecord>? myChallenges;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UserChallengesRecord>? myUpdatedChallenges;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    productcategoryNameFocusNode?.dispose();
    productcategoryNameTextController?.dispose();
  }
}
