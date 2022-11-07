import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedBackPageWidget extends StatefulWidget {
  const FeedBackPageWidget({Key? key}) : super(key: key);

  @override
  _FeedBackPageWidgetState createState() => _FeedBackPageWidgetState();
}

class _FeedBackPageWidgetState extends State<FeedBackPageWidget> {
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).bottomSheet1,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: TextFormField(
                    controller: textController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Your Feedback Please...',
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryText,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    final usersUpdateData = createUsersRecordData(
                      feedback: textController!.text,
                    );
                    await currentUserReference!.update(usersUpdateData);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Thank you for your feedback',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: Duration(milliseconds: 2000),
                        backgroundColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                      ),
                    );
                    setState(() {
                      textController?.clear();
                    });
                    Navigator.pop(context);
                  },
                  text: 'Send',
                  options: FFButtonOptions(
                    width: 230,
                    height: 40,
                    color: FlutterFlowTheme.of(context).navBarSelected,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
