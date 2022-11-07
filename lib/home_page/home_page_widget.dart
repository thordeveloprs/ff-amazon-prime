import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/feed_back_page_widget.dart';
import '../components/tag_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Drawer(
          elevation: 16,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.22,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Color(0xFF642F30),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AuthUserStreamWidget(
                                    child: Text(
                                      valueOrDefault<String>(
                                        functions
                                            .returnChar(currentUserDisplayName),
                                        'B',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AuthUserStreamWidget(
                              child: Text(
                                currentUserDisplayName,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.wb_sunny,
                                color: Color(0xFFFF8600),
                                size: 28,
                              ),
                              if (Theme.of(context).brightness ==
                                  Brightness.light)
                                InkWell(
                                  onTap: () async {
                                    setDarkModeSetting(context, ThemeMode.dark);
                                  },
                                  child: Icon(
                                    Icons.toggle_off_sharp,
                                    color: Color(0xFFFF8600),
                                    size: 30,
                                  ),
                                ),
                              if (Theme.of(context).brightness ==
                                  Brightness.dark)
                                InkWell(
                                  onTap: () async {
                                    setDarkModeSetting(
                                        context, ThemeMode.light);
                                  },
                                  child: Icon(
                                    Icons.toggle_on_sharp,
                                    color: Color(0xFF0038FF),
                                    size: 30,
                                  ),
                                ),
                              FaIcon(
                                FontAwesomeIcons.moon,
                                color: Color(0xFF0038FF),
                                size: 28,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 5, 0),
                                        child: Icon(
                                          Icons.notifications,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        'Set Notification Time',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: InkWell(
                                onTap: () async {
                                  await launchURL(
                                      'https://www.youtube.com/watch?v=NH52jzJg7SY&t=26s&ab_channel=FlutterFlow');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 5, 0),
                                          child: FaIcon(
                                            FontAwesomeIcons.youtube,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20,
                                          ),
                                        ),
                                        Text(
                                          'Finshots on YouTube',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: InkWell(
                                onTap: () async {
                                  await launchURL(
                                      'https://play.google.com/store/games?utm_source=apac_med&utm_medium=hasem&utm_content=Oct0121&utm_campaign=Evergreen&pcampaignid=MKT-EDR-apac-in-1003227-med-hasem-py-Evergreen-Oct0121-Text_Search_BKWS-BKWS%7CONSEM_kwid_43700065205026376_creativeid_535350509651_device_c&gclid=CjwKCAjwzNOaBhAcEiwAD7Tb6OC7a7_nXq1THjTl-JEElN-xCd2IVN_bk0h-E2uK2NotL1hJ8bXPqRoCo3AQAvD_BwE&gclsrc=aw.ds');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 5, 0),
                                          child: FaIcon(
                                            FontAwesomeIcons.googlePlay,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20,
                                          ),
                                        ),
                                        Text(
                                          'Rate us on Play Store',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Color(0x00F1F4F8),
                                    barrierColor: Color(0x36FFFDFD),
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.3,
                                          child: FeedBackPageWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 5, 0),
                                          child: FaIcon(
                                            FontAwesomeIcons.envelopeOpenText,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20,
                                          ),
                                        ),
                                        Text(
                                          'Any Feedback ?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: InkWell(
                                onTap: () async {
                                  await Share.share('This is greate');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 5, 0),
                                          child: Icon(
                                            Icons.share,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20,
                                          ),
                                        ),
                                        Text(
                                          'Sahre With a Friend',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await signOut();

                                      context.goNamedAuth('LoginPage', mounted);
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 5, 0),
                                          child: Icon(
                                            Icons.logout,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20,
                                          ),
                                        ),
                                        Text(
                                          'Logout',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Text(
                        'follow us on',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebookF,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20,
                          ),
                          FaIcon(
                            FontAwesomeIcons.twitter,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20,
                          ),
                          FaIcon(
                            FontAwesomeIcons.instagram,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20,
                          ),
                          FaIcon(
                            FontAwesomeIcons.linkedinIn,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20,
                          ),
                          FaIcon(
                            FontAwesomeIcons.solidPaperPlane,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.copyright,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 16,
                        ),
                        Text(
                          '2022 Finshots',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.registered,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 8,
                            ),
                          ],
                        ),
                        Text(
                          'v1.0.31',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
              child: InkWell(
                onTap: () async {
                  scaffoldKey.currentState!.openDrawer();
                },
                child: Image.asset(
                  'assets/images/4y87x_8.png',
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 2, 0),
              child: Image.asset(
                'assets/images/10.png',
                width: 43,
                height: 43,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'FINSHOTS',
              style: FlutterFlowTheme.of(context).title3.override(
                    fontFamily: 'Oswald',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                  child: StreamBuilder<List<NewsDetailsRecord>>(
                    stream: queryNewsDetailsRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }
                      List<NewsDetailsRecord> imageNewsDetailsRecordList =
                          snapshot.data!;
                      return InkWell(
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  child: TagPageWidget(),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: Image.asset(
                          'assets/images/12.png',
                          width: 28,
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Color(0xFF1359AF),
                  size: 28,
                ),
              ],
            ),
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: StreamBuilder<List<NewsDetailsRecord>>(
                          stream: queryNewsDetailsRecord(
                            queryBuilder: (newsDetailsRecord) =>
                                newsDetailsRecord
                                    .where('category', isEqualTo: 'Generic')
                                    .orderBy('uploaded_time', descending: true),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<NewsDetailsRecord>
                                columnNewsDetailsRecordList = snapshot.data!;
                            if (columnNewsDetailsRecordList.isEmpty) {
                              return Image.network(
                                'https://www.gitaa.in/img/NoRecordFound.png',
                              );
                            }
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    columnNewsDetailsRecordList.length,
                                    (columnIndex) {
                                  final columnNewsDetailsRecord =
                                      columnNewsDetailsRecordList[columnIndex];
                                  return Visibility(
                                    visible: FFAppState().tagItems.contains(
                                        columnNewsDetailsRecord.title),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 25),
                                      child: InkWell(
                                        onTap: () async {
                                          context.pushNamed(
                                            'ArticalPage',
                                            queryParams: {
                                              'newRef': serializeParam(
                                                columnNewsDetailsRecord,
                                                ParamType.Document,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'newRef': columnNewsDetailsRecord,
                                            },
                                          );
                                        },
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: FlutterFlowTheme.of(context)
                                              .cardColor,
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0),
                                                    bottomRight:
                                                        Radius.circular(0),
                                                    topLeft:
                                                        Radius.circular(16),
                                                    topRight:
                                                        Radius.circular(16),
                                                  ),
                                                  child: Image.network(
                                                    columnNewsDetailsRecord
                                                        .imgUrl!,
                                                    width: double.infinity,
                                                    height: 170,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                if (dateTimeFormat(
                                                        'yMd',
                                                        columnNewsDetailsRecord
                                                            .uploadedTime) ==
                                                    dateTimeFormat('yMd',
                                                        getCurrentTimestamp))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 0, 0),
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .currentUpdateCard,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 5,
                                                                    10, 5),
                                                        child: Text(
                                                          'Today\'s Special',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .italic,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 20, 10, 10),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    0, 10),
                                                        child: Text(
                                                          columnNewsDetailsRecord
                                                              .heading!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title3
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 22,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        columnNewsDetailsRecord
                                                            .shortDescription!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    0, 10),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              dateTimeFormat(
                                                                  'relative',
                                                                  columnNewsDetailsRecord
                                                                      .uploadedTime!),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: Color(
                                                                        0xFF0873A2),
                                                                  ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                if (columnNewsDetailsRecord
                                                                        .isBookmarked ??
                                                                    true)
                                                                  InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      final newsDetailsUpdateData =
                                                                          createNewsDetailsRecordData(
                                                                        isBookmarked:
                                                                            false,
                                                                      );
                                                                      await columnNewsDetailsRecord
                                                                          .reference
                                                                          .update(
                                                                              newsDetailsUpdateData);
                                                                    },
                                                                    child:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidBookmark,
                                                                      color: Color(
                                                                          0xFF0873A2),
                                                                      size: 24,
                                                                    ),
                                                                  ),
                                                                if (!columnNewsDetailsRecord
                                                                    .isBookmarked!)
                                                                  InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      final newsDetailsUpdateData =
                                                                          createNewsDetailsRecordData(
                                                                        isBookmarked:
                                                                            true,
                                                                      );
                                                                      await columnNewsDetailsRecord
                                                                          .reference
                                                                          .update(
                                                                              newsDetailsUpdateData);
                                                                    },
                                                                    child:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .bookmark,
                                                                      color: Color(
                                                                          0xFF0873A2),
                                                                      size: 24,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: StreamBuilder<List<NewsDetailsRecord>>(
                          stream: queryNewsDetailsRecord(
                            queryBuilder: (newsDetailsRecord) =>
                                newsDetailsRecord
                                    .where('category', isEqualTo: 'Generic')
                                    .orderBy('uploaded_time', descending: true),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<NewsDetailsRecord>
                                columnNewsDetailsRecordList = snapshot.data!;
                            if (columnNewsDetailsRecordList.isEmpty) {
                              return Image.network(
                                'https://www.gitaa.in/img/NoRecordFound.png',
                              );
                            }
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    columnNewsDetailsRecordList.length,
                                    (columnIndex) {
                                  final columnNewsDetailsRecord =
                                      columnNewsDetailsRecordList[columnIndex];
                                  return Visibility(
                                    visible: FFAppState().tagItem ==
                                        functions.returnTag(
                                            FFAppState().tagItems.toList()),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 25),
                                      child: InkWell(
                                        onTap: () async {
                                          context.pushNamed(
                                            'ArticalPage',
                                            queryParams: {
                                              'newRef': serializeParam(
                                                columnNewsDetailsRecord,
                                                ParamType.Document,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'newRef': columnNewsDetailsRecord,
                                            },
                                          );
                                        },
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: FlutterFlowTheme.of(context)
                                              .cardColor,
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0),
                                                    bottomRight:
                                                        Radius.circular(0),
                                                    topLeft:
                                                        Radius.circular(16),
                                                    topRight:
                                                        Radius.circular(16),
                                                  ),
                                                  child: Image.network(
                                                    columnNewsDetailsRecord
                                                        .imgUrl!,
                                                    width: double.infinity,
                                                    height: 170,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                if (dateTimeFormat(
                                                        'yMd',
                                                        columnNewsDetailsRecord
                                                            .uploadedTime) ==
                                                    dateTimeFormat('yMd',
                                                        getCurrentTimestamp))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 0, 0),
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .currentUpdateCard,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 5,
                                                                    10, 5),
                                                        child: Text(
                                                          'Today\'s Special',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .italic,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 20, 10, 10),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    0, 10),
                                                        child: Text(
                                                          columnNewsDetailsRecord
                                                              .heading!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title3
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 22,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        columnNewsDetailsRecord
                                                            .shortDescription!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    0, 10),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              dateTimeFormat(
                                                                  'relative',
                                                                  columnNewsDetailsRecord
                                                                      .uploadedTime!),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: Color(
                                                                        0xFF0873A2),
                                                                  ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                if (columnNewsDetailsRecord
                                                                        .isBookmarked ??
                                                                    true)
                                                                  InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      final newsDetailsUpdateData =
                                                                          createNewsDetailsRecordData(
                                                                        isBookmarked:
                                                                            false,
                                                                      );
                                                                      await columnNewsDetailsRecord
                                                                          .reference
                                                                          .update(
                                                                              newsDetailsUpdateData);
                                                                    },
                                                                    child:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidBookmark,
                                                                      color: Color(
                                                                          0xFF0873A2),
                                                                      size: 24,
                                                                    ),
                                                                  ),
                                                                if (!columnNewsDetailsRecord
                                                                    .isBookmarked!)
                                                                  InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      final newsDetailsUpdateData =
                                                                          createNewsDetailsRecordData(
                                                                        isBookmarked:
                                                                            true,
                                                                      );
                                                                      await columnNewsDetailsRecord
                                                                          .reference
                                                                          .update(
                                                                              newsDetailsUpdateData);
                                                                    },
                                                                    child:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .bookmark,
                                                                      color: Color(
                                                                          0xFF0873A2),
                                                                      size: 24,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
