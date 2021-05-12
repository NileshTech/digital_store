import 'package:flutter/material.dart';
import 'package:digital_store_project/common/app_background.dart';
import 'package:digital_store_project/common/horizontal_tab_layout.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBackground(),
          Center(
            child: HorizontalTabLayout(),
          )
        ],
      ),
    );
  }
}
