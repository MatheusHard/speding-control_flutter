import 'package:control_speding_2/ui/widgets/appbar/app_bar_widget.dart';
import 'package:control_speding_2/utils/core/app_gradients.dart';
import 'package:flutter/material.dart';

class Viagens extends StatefulWidget {

  const Viagens({Key? key}) : super(key: key);

  @override
  _ViagensState createState() => _ViagensState();
}

class _ViagensState extends State<Viagens> {

  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: const Padding(
          padding: EdgeInsets.all(0),
          child: Center(
            child: Center(
              child: Text("VIAGENS"),
            ),
          ),
        )
    );
  }
}
