import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'circle_model.dart';
export 'circle_model.dart';

class CircleWidget extends StatefulWidget {
  const CircleWidget({Key? key}) : super(key: key);

  @override
  _CircleWidgetState createState() => _CircleWidgetState();
}

class _CircleWidgetState extends State<CircleWidget> {
  late CircleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CircleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
