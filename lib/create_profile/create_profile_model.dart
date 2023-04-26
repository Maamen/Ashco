import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/upolodimagebutton/upolodimagebutton_widget.dart';
import '/feed/feed_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Upolodimagebutton component.
  late UpolodimagebuttonModel upolodimagebuttonModel;
  // State field(s) for firstname widget.
  TextEditingController? firstnameController;
  String? Function(BuildContext, String?)? firstnameControllerValidator;
  // State field(s) for lastname widget.
  TextEditingController? lastnameController;
  String? Function(BuildContext, String?)? lastnameControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for citystudentid widget.
  TextEditingController? citystudentidController;
  String? Function(BuildContext, String?)? citystudentidControllerValidator;
  // State field(s) for dob widget.
  TextEditingController? dobController;
  String? Function(BuildContext, String?)? dobControllerValidator;
  // State field(s) for residency widget.
  TextEditingController? residencyController;
  String? Function(BuildContext, String?)? residencyControllerValidator;
  // State field(s) for year widget.
  TextEditingController? yearController;
  String? Function(BuildContext, String?)? yearControllerValidator;
  // State field(s) for major widget.
  TextEditingController? majorController;
  String? Function(BuildContext, String?)? majorControllerValidator;
  // State field(s) for bestfood widget.
  TextEditingController? bestfoodController;
  String? Function(BuildContext, String?)? bestfoodControllerValidator;
  // State field(s) for bestmovie widget.
  TextEditingController? bestmovieController;
  String? Function(BuildContext, String?)? bestmovieControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    upolodimagebuttonModel =
        createModel(context, () => UpolodimagebuttonModel());
  }

  void dispose() {
    upolodimagebuttonModel.dispose();
    firstnameController?.dispose();
    lastnameController?.dispose();
    emailController?.dispose();
    citystudentidController?.dispose();
    dobController?.dispose();
    residencyController?.dispose();
    yearController?.dispose();
    majorController?.dispose();
    bestfoodController?.dispose();
    bestmovieController?.dispose();
  }

  /// Additional helper methods are added here.

}
