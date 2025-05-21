import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_confirm_page_widget.dart' show SearchConfirmPageWidget;
import 'package:flutter/material.dart';

class SearchConfirmPageModel extends FlutterFlowModel<SearchConfirmPageWidget> {
  ///  Local state fields for this page.

  int? allPoints;

  int? tempProgress;

  int? tempGoal;

  bool? tempCompleted;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UserChallengesRecord>? myChallenges;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChallengesRecord>? newChallenges;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
