import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TagPageWidget extends StatefulWidget {
  const TagPageWidget({Key? key}) : super(key: key);

  @override
  _TagPageWidgetState createState() => _TagPageWidgetState();
}

class _TagPageWidgetState extends State<TagPageWidget> {
  ValueNotifier<List<String>?> checkboxGroupSValues = ValueNotifier(null);

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (FFAppState().checkedBtn == 'Checked All')
                  FFButtonWidget(
                    onPressed: () async {
                      setState(() => checkboxGroupSValues.value = List.from([
                            'Sports',
                            'Business',
                            'Banking',
                            'Wedding',
                            'Environment'
                          ]));
                      setState(
                          () => FFAppState().checkedBtn = 'Not Checked All');
                    },
                    text: 'Select All',
                    options: FFButtonOptions(
                      width: 130,
                      height: 30,
                      color: FlutterFlowTheme.of(context).navBarSelected,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                if (FFAppState().checkedBtn == 'Not Checked All')
                  FFButtonWidget(
                    onPressed: () async {
                      setState(() => checkboxGroupSValues.value = []);
                      setState(() => FFAppState().checkedBtn = 'Checked All');
                    },
                    text: 'Reset All',
                    options: FFButtonOptions(
                      width: 130,
                      height: 30,
                      color: FlutterFlowTheme.of(context).navBarSelected,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: FlutterFlowCheckboxGroup(
                    initiallySelected: FFAppState().updateTagItems,
                    options: [
                      'Sports',
                      'Business',
                      'Banking',
                      'Wedding',
                      'Environment'
                    ],
                    onChanged: (val) =>
                        setState(() => checkboxGroupSValues.value = val),
                    activeColor: FlutterFlowTheme.of(context).navBarSelected,
                    checkColor: Colors.white,
                    checkboxBorderColor: Color(0xFF95A1AC),
                    textStyle: FlutterFlowTheme.of(context).bodyText1,
                    initialized: checkboxGroupSValues.value != null,
                    selectedValuesVariable: checkboxGroupSValues,
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    setState(() => FFAppState().tagItems =
                        checkboxGroupSValues.value!.toList());
                    setState(() => FFAppState().updateTagItems =
                        checkboxGroupSValues.value!.toList());
                    Navigator.pop(context);
                  },
                  text: 'Filter',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
