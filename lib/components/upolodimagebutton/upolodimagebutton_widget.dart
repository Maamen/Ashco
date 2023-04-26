import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'upolodimagebutton_model.dart';
export 'upolodimagebutton_model.dart';

class UpolodimagebuttonWidget extends StatefulWidget {
  const UpolodimagebuttonWidget({Key? key}) : super(key: key);

  @override
  _UpolodimagebuttonWidgetState createState() =>
      _UpolodimagebuttonWidgetState();
}

class _UpolodimagebuttonWidgetState extends State<UpolodimagebuttonWidget> {
  late UpolodimagebuttonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpolodimagebuttonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
        },
        text: 'Upload Image',
        options: FFButtonOptions(
          width: 130.0,
          height: 40.0,
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: FlutterFlowTheme.of(context).primary,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
          hoverColor: Color(0xFF3D7971),
        ),
      ),
    );
  }
}
