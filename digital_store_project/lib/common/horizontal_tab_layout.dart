import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:digital_store_project/common/forum_card.dart';
import 'package:digital_store_project/common/tab_text.dart';
import 'package:digital_store_project/model/forum.dart';

const String title1 = "Media";
const String title2 = "Streamers";
const String title3 = "Forum";
const String title4 = "Forum";

class HorizontalTabLayout extends StatefulWidget {
  @override
  _HorizontalTabLayoutState createState() => _HorizontalTabLayoutState();
}

class _HorizontalTabLayoutState extends State<HorizontalTabLayout>
    with SingleTickerProviderStateMixin {
  int selectedTabIndex = 0;
  AnimationController _controller;
  Animation<Offset> _animation;
  Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _animation = Tween<Offset>(begin: Offset(0, 0), end: Offset(-0.05, 0))
        .animate(_controller);
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.7,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: -20,
            bottom: 0,
            top: 0,
            width: screenSize.width * 0.3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TabText(
                    text: title1,
                    isSelected: selectedTabIndex == 0,
                    onTabTap: () {
                      onTabTap(0);
                    },
                  ),
                  TabText(
                    text: title2,
                    isSelected: selectedTabIndex == 1,
                    onTabTap: () {
                      onTabTap(1);
                    },
                  ),
                  TabText(
                    text: title3,
                    isSelected: selectedTabIndex == 2,
                    onTabTap: () {
                      onTabTap(2);
                    },
                  ),
                  TabText(
                    text: title4,
                    isSelected: selectedTabIndex == 3,
                    onTabTap: () {
                      onTabTap(3);
                    },
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65.0),
            child: FutureBuilder(
              future: playAnimation(),
              builder: (context, snapshot) {
                return FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _animation,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: getList(selectedTabIndex),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getList(index) {
    return [
      [
        ForumCard(forum: fortniteForum),
        ForumCard(forum: pubgForum),
        ForumCard(forum: fortniteForum),
        ForumCard(forum: pubgForum),
      ],
      [
        ForumCard(forum: fortniteForum),
        ForumCard(forum: fortniteForum),
        ForumCard(forum: fortniteForum),
        ForumCard(forum: pubgForum)
      ],
      [
        ForumCard(forum: fortniteForum),
        ForumCard(forum: pubgForum),
        ForumCard(forum: fortniteForum),
        ForumCard(forum: pubgForum),
        ForumCard(forum: pubgForum),
        ForumCard(forum: pubgForum),
      ],
      [
        ForumCard(forum: fortniteForum),
        ForumCard(forum: pubgForum),
        ForumCard(forum: fortniteForum),
        ForumCard(forum: pubgForum),
        ForumCard(forum: pubgForum),
        ForumCard(forum: pubgForum),
      ]
    ][index];
  }

  onTabTap(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }
}
