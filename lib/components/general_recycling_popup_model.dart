import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'general_recycling_popup_widget.dart' show GeneralRecyclingPopupWidget;
import 'package:flutter/material.dart';

class GeneralRecyclingPopupModel
    extends FlutterFlowModel<GeneralRecyclingPopupWidget> {
  ///  Local state fields for this component.

  ItemsSearchRecord? items;

  DocumentReference? bin;

  ///  State fields for stateful widgets in this component.

  var barcodeResult = '';
  // Stores action output result for [Backend Call - API (Get barcode)] action in Camera widget.
  ApiCallResponse? apiResult88i;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
