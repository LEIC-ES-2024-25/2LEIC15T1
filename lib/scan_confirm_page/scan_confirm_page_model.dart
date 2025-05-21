import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'scan_confirm_page_widget.dart' show ScanConfirmPageWidget;
import 'package:flutter/material.dart';

class ScanConfirmPageModel extends FlutterFlowModel<ScanConfirmPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UserChallengesRecord>? myChallenges;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UserChallengesRecord>? myUpdatedChallenges;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UserChallengesRecord>? myCompletedChallenges;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChallengesRecord>? newChallenges;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
