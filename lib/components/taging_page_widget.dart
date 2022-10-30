import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TagingPageWidget extends StatefulWidget {
  const TagingPageWidget({
    Key? key,
    this.articalRef,
  }) : super(key: key);

  final NewsDetailsRecord? articalRef;

  @override
  _TagingPageWidgetState createState() => _TagingPageWidgetState();
}

class _TagingPageWidgetState extends State<TagingPageWidget> {
  String? radioButtonValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(-1, 0.1),
              child: FlutterFlowRadioButton(
                options: ['All', 'Sports', 'Business', 'Banking'].toList(),
                onChanged: (val) async {
                  setState(() => radioButtonValue = val);
                  setState(() => FFAppState().tagItem = radioButtonValue!);
                  Navigator.pop(context);
                },
                optionHeight: 50,
                textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 18,
                    ),
                buttonPosition: RadioButtonPosition.left,
                direction: Axis.vertical,
                radioButtonColor: Colors.blue,
                inactiveRadioButtonColor:
                    FlutterFlowTheme.of(context).primaryText,
                toggleable: false,
                horizontalAlignment: WrapAlignment.start,
                verticalAlignment: WrapCrossAlignment.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
