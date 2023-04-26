import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'location_model.dart';
export 'location_model.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  late LocationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
      child: FlutterFlowPlacePicker(
        iOSGoogleMapsApiKey: '',
        androidGoogleMapsApiKey: '',
        webGoogleMapsApiKey: '',
        onSelect: (place) async {
          setState(() => _model.placePickerValue = place);
        },
        defaultText: 'Tag Location',
        icon: Icon(
          Icons.place,
          color: Color(0xFF95A1AC),
          size: 16.0,
        ),
        buttonOptions: FFButtonOptions(
          width: double.infinity,
          height: 50.0,
          color: FlutterFlowTheme.of(context).secondaryBackground,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primaryBackground,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
