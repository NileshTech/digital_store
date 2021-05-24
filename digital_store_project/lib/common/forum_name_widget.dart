import 'package:flutter/material.dart';
import 'package:digital_store_project/model/forum.dart';
import 'package:digital_store_project/styleguide/colors.dart';
import 'package:digital_store_project/styleguide/text_styles.dart';

class ForumNameWidget extends StatelessWidget {
  final Forum forum;

  ForumNameWidget({this.forum});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Material(
      color: primaryColor,
      elevation: 20.0,
      shape: CustomShapeBorder(),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 22.0, left: 20.0, right: 16.0, bottom: 5.0),
        child: Column(
          children: [
            Text(
              forum.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: screenSize.width * 0.04,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomShapeBorder extends ShapeBorder {
  final double distanceFromWall = 12;
  final double controlPointDistanceFromWall = 2;

  @override
  EdgeInsetsGeometry get dimensions => null;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return null;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return getClip(Size(150.0, 60.0));
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return null;
  }

  Path getClip(Size size) {
    Path clippedPath = Path();
    clippedPath.moveTo(0 + distanceFromWall, 0);
    clippedPath.quadraticBezierTo(0 + controlPointDistanceFromWall,
        0 + controlPointDistanceFromWall, 0, 0 + distanceFromWall);
    clippedPath.lineTo(0, size.height - distanceFromWall);
    clippedPath.quadraticBezierTo(
        0 + controlPointDistanceFromWall,
        size.height - controlPointDistanceFromWall,
        0 + distanceFromWall,
        size.height);
    clippedPath.lineTo(size.width - distanceFromWall, size.height);
    clippedPath.quadraticBezierTo(
        size.width - controlPointDistanceFromWall,
        size.height - controlPointDistanceFromWall,
        size.width,
        size.height - distanceFromWall);
    clippedPath.lineTo(size.width, size.height * 0.6);
    clippedPath.quadraticBezierTo(
        size.width - 1,
        size.height * 0.6 - distanceFromWall,
        size.width - distanceFromWall,
        size.height * 0.6 - distanceFromWall - 3);
    clippedPath.lineTo(0 + distanceFromWall + 6, 0);
    clippedPath.close();
    return clippedPath;
  }
}
