import 'package:flutter/material.dart';
import 'package:digital_store_project/common/forum_details_widget.dart';
import 'package:digital_store_project/common/forum_name_widget.dart';
import 'package:digital_store_project/model/forum.dart';

class ForumCard extends StatelessWidget {
  final Forum forum;

  ForumCard({this.forum});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width * 0.6,
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
                forum.imagePath,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: ForumDetailsWidget(forum: forum),
              ),
              Positioned(
                left: 0,
                bottom: 80.0,
                child: ForumNameWidget(forum: forum),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
