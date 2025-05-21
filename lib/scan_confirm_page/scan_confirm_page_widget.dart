import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'scan_confirm_page_model.dart';
export 'scan_confirm_page_model.dart';

class ScanConfirmPageWidget extends StatefulWidget {
  const ScanConfirmPageWidget({
    super.key,
    String? itemNameSend,
    String? itemCategorySend,
    required this.itemImageSend,
  })  : this.itemNameSend = itemNameSend ?? 'Item not found',
        this.itemCategorySend = itemCategorySend ?? 'Item not found';

  /// The item name sent to this page
  final String itemNameSend;

  /// The item description sent to this page
  final String itemCategorySend;

  /// The item image link sent to this page
  final String? itemImageSend;

  static String routeName = 'scan_confirm_page';
  static String routePath = '/scanConfirmPage';

  @override
  State<ScanConfirmPageWidget> createState() => _ScanConfirmPageWidgetState();
}

class _ScanConfirmPageWidgetState extends State<ScanConfirmPageWidget> {
  late ScanConfirmPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScanConfirmPageModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 0.0, 8.0),
            child: FlutterFlowIconButton(
              borderRadius: 12.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
          ),
          title: Text(
            'Scan',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 1270.0,
                            ),
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 20.0, 16.0, 0.0),
                              child: Wrap(
                                spacing: 16.0,
                                runSpacing: 16.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.center,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 570.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'This is the information of your scanned item:',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            widget.itemImageSend!,
                                            width: 479.9,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          width: 426.9,
                                          height: 54.6,
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
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 15.0, 0.0, 0.0),
                                              child: Text(
                                                widget.itemNameSend,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 426.9,
                                          height: 54.5,
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
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 15.0, 0.0, 0.0),
                                              child: Text(
                                                widget.itemCategorySend,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 12.0)),
                                    ),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 570.0,
                                    ),
                                    decoration: BoxDecoration(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 770.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await currentUserReference!.update({
                            ...mapToFirestore(
                              {
                                'points': FieldValue.increment(50),
                              },
                            ),
                          });

                          await RecyclingActionRecord.collection
                              .doc()
                              .set(createRecyclingActionRecordData(
                                name: widget.itemNameSend,
                                category: widget.itemCategorySend,
                                image: widget.itemImageSend,
                                date: getCurrentTimestamp,
                                points: 100,
                                email: currentUserEmail,
                              ));
                          _model.myChallenges =
                              await queryUserChallengesRecordOnce(
                            queryBuilder: (userChallengesRecord) =>
                                userChallengesRecord
                                    .where(
                                      'userEmail',
                                      isEqualTo: currentUserEmail,
                                    )
                                    .where(
                                      'completed',
                                      isEqualTo: false,
                                    ),
                          );
                          for (int loop1Index = 0;
                              loop1Index < _model.myChallenges!.length;
                              loop1Index++) {
                            final currentLoop1Item =
                                _model.myChallenges![loop1Index];

                            await currentLoop1Item.reference.update({
                              ...mapToFirestore(
                                {
                                  'progress': FieldValue.increment(1),
                                },
                              ),
                            });
                          }
                          _model.myUpdatedChallenges =
                              await queryUserChallengesRecordOnce(
                            queryBuilder: (userChallengesRecord) =>
                                userChallengesRecord
                                    .where(
                                      'userEmail',
                                      isEqualTo: currentUserEmail,
                                    )
                                    .where(
                                      'completed',
                                      isEqualTo: false,
                                    ),
                          );
                          for (int loop2Index = 0;
                              loop2Index < _model.myUpdatedChallenges!.length;
                              loop2Index++) {
                            final currentLoop2Item =
                                _model.myUpdatedChallenges![loop2Index];

                            await currentLoop2Item.reference
                                .update(createUserChallengesRecordData(
                              completed: true,
                            ));
                          }
                          _model.myCompletedChallenges =
                              await queryUserChallengesRecordOnce(
                            queryBuilder: (userChallengesRecord) =>
                                userChallengesRecord
                                    .where(
                                      'userEmail',
                                      isEqualTo: currentUserEmail,
                                    )
                                    .where(
                                      'completed',
                                      isEqualTo: true,
                                    ),
                          );
                          for (int loop3Index = 0;
                              loop3Index < _model.myCompletedChallenges!.length;
                              loop3Index++) {
                            final currentLoop3Item =
                                _model.myCompletedChallenges![loop3Index];

                            await currentUserReference!.update({
                              ...mapToFirestore(
                                {
                                  'points': FieldValue.increment(
                                      currentLoop3Item.points),
                                },
                              ),
                            });
                          }

                          await currentUserReference!
                              .update(createUsersRecordData(
                            level: (valueOrDefault(
                                            currentUserDocument?.points, 0) /
                                        100)
                                    .floor() +
                                1,
                          ));
                          _model.newChallenges =
                              await queryChallengesRecordOnce(
                            queryBuilder: (challengesRecord) =>
                                challengesRecord.where(
                              'level',
                              isEqualTo:
                                  valueOrDefault(currentUserDocument?.level, 0),
                            ),
                          );
                          for (int loop4Index = 0;
                              loop4Index < _model.newChallenges!.length;
                              loop4Index++) {
                            final currentLoop4Item =
                                _model.newChallenges![loop4Index];

                            await UserChallengesRecord.collection
                                .doc()
                                .set(createUserChallengesRecordData(
                                  challengeRef: currentLoop4Item.reference,
                                  progress: 0,
                                  completed: false,
                                  userEmail: currentUserEmail,
                                  type: currentLoop4Item.type,
                                  description: currentLoop4Item.description,
                                  points: currentLoop4Item.points,
                                  goal: currentLoop4Item.goal,
                                ));
                          }

                          context.pushNamed(MainPageWidget.routeName);

                          safeSetState(() {});
                        },
                        text: 'Confirm',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 48.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).secondary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.figtree(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
