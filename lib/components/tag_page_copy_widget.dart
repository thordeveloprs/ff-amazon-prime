import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TagPageCopyWidget extends StatefulWidget {
  const TagPageCopyWidget({Key? key}) : super(key: key);

  @override
  _TagPageCopyWidgetState createState() => _TagPageCopyWidgetState();
}

class _TagPageCopyWidgetState extends State<TagPageCopyWidget> {
  List<String>? checkboxGroupSValues;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    setState(() => FFAppState().updateTagItems =
                        FFAppState().tagItems.toList());
                  },
                  text: 'Select All',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    setState(() => FFAppState().updateTagItems = []);
                  },
                  text: 'Reset',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                FlutterFlowCheckboxGroup(
                  initiallySelected: FFAppState().updateTagItems,
                  options: [
                    'Sports',
                    'Business',
                    'Banking',
                    'Wedding',
                    'Environment'
                  ],
                  onChanged: (val) async {
                    setState(() => checkboxGroupSValues = val);
                    setState(() =>
                        FFAppState().tagItems = checkboxGroupSValues!.toList());
                    setState(() => FFAppState().updateTagItems =
                        checkboxGroupSValues!.toList());
                  },
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: Colors.white,
                  checkboxBorderColor: Color(0xFF95A1AC),
                  textStyle: FlutterFlowTheme.of(context).bodyText1,
                  initialized: checkboxGroupSValues != null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
