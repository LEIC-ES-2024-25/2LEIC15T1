import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recycling_popup_widget.dart' show RecyclingPopupWidget;
import 'package:flutter/material.dart';

class RecyclingPopupModel extends FlutterFlowModel<RecyclingPopupWidget> {
  ///  Local state fields for this component.

  ItemsSearchRecord? items;

  ///  State fields for stateful widgets in this component.

  var barcodeResult = '';
  // Stores action output result for [Backend Call - API (Get barcode)] action in Container widget.
  ApiCallResponse? apiResult88i;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
