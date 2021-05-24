import 'dart:io';

import 'package:digital_store_project/web_view/webview.dart';
import 'package:flutter/material.dart';
import 'package:digital_store_project/common/forum_details_widget.dart';
import 'package:digital_store_project/common/forum_name_widget.dart';
import 'package:digital_store_project/model/forum.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ForumCard extends StatefulWidget {
  final Forum forum;

  ForumCard({this.forum});

  @override
  _ForumCardState createState() => _ForumCardState();
}

class _ForumCardState extends State<ForumCard> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WebViewPage(widget.forum.affiliateLink)),
        );
      },
      child: SizedBox(
        width: screenSize.width * 0.5,
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          elevation: 20.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  widget.forum.imagePath,
                  fit: BoxFit.fill,
                  height: screenSize.height * 0.3,
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: -20,
                  child: ForumDetailsWidget(forum: widget.forum),
                ),
                Positioned(
                  left: 0,
                  bottom: 60.0,
                  child: ForumNameWidget(forum: widget.forum),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
