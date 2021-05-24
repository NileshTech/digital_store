import 'package:flutter/material.dart';
import 'package:digital_store_project/common/app_background.dart';
import 'package:digital_store_project/common/horizontal_tab_layout.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text(
      //     "Digital Store",
      //     style: TextStyle(
      //       color: Color(0xFFE4E6F1),
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            // AppBackground(),
            Positioned(
              top: 30,
              left: 20,
              child: Text(
                "Digital Store",
                style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Color(0xFFE4E6F1),
                    ),
              ),
            ),
            Center(
              child: HorizontalTabLayout(),
            )
          ],
        ),
      ),
    );
  }
}
