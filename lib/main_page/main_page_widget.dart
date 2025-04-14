import '/backend/backend.dart';
import '/components/recycling_popup_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'main_page_model.dart';
export 'main_page_model.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  static String routeName = 'main_page';
  static String routePath = '/mainPage';

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  late MainPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                    child: StreamBuilder<List<InfoRecord>>(
                      stream: queryInfoRecord(
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<InfoRecord> textInfoRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textInfoRecord = textInfoRecordList.isNotEmpty
                            ? textInfoRecordList.first
                            : null;

                        return Text(
                          valueOrDefault<String>(
                            textInfoRecord?.name,
                            'name',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).secondary,
                      icon: Icon(
                        Icons.person,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(ProfilePageWidget.routeName);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 742.39,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Stack(
                  children: [
                    FlutterFlowGoogleMap(
                      controller: _model.googleMapsController,
                      onCameraIdle: (latLng) =>
                          _model.googleMapsCenter = latLng,
                      initialLocation: _model.googleMapsCenter ??=
                          LatLng(41.1776832, -8.5957992),
                      markerColor: GoogleMarkerColor.violet,
                      markerImage: MarkerImage(
                        imagePath: 'assets/images/2vqf7_',
                        isAssetImage: true,
                        size: 20.0 ?? 20,
                      ),
                      mapType: MapType.normal,
                      style: GoogleMapStyle.standard,
                      initialZoom: 17.16,
                      allowInteraction: true,
                      allowZoom: true,
                      showZoomControls: true,
                      showLocation: true,
                      showCompass: false,
                      showMapToolbar: false,
                      showTraffic: false,
                      centerMapOnMarkerTap: true,
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: PointerInterceptor(
                        intercepting: isWeb,
                        child: Padding(
                          padding: EdgeInsets.all(75.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 2.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderRadius: 25.0,
                                buttonSize: 80.0,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                icon: Icon(
                                  Icons.recycling_sharp,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 40.0,
                                ),
                                onPressed: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return GestureDetector(
                                        onTap: () {
                                          FocusScope.of(context).unfocus();
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: Container(
                                            height: 600.0,
                                            child: RecyclingPopupWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
