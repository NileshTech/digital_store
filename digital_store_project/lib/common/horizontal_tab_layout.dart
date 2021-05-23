import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:digital_store_project/common/forum_card.dart';
import 'package:digital_store_project/common/tab_text.dart';
import 'package:digital_store_project/model/forum.dart';

const String title1 = "Animation";
const String title2 = "Website";
const String title3 = "Videos";
const String title4 = "Email";
const String title5 = "Animation";

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
  String title;

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
    selectedTabIndex == 0
        ? title = title1
        : selectedTabIndex == 1
            ? title = title2
            : selectedTabIndex == 3
                ? title = title4
                : title = title5;
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
                  ),
                  TabText(
                    text: title5,
                    isSelected: selectedTabIndex == 4,
                    onTabTap: () {
                      onTabTap(4);
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
        ForumCard(forum: videoBuilder),
        ForumCard(forum: doodleMaker),
        ForumCard(forum: videoBuilderDelux),
        ForumCard(forum: videoDashboard),
        ForumCard(forum: videoAppSuite),
        ForumCard(forum: chatterPal),
        ForumCard(forum: avtarBuilder),
        ForumCard(forum: doodleMakerDelux),
      ],
      [
        ForumCard(forum: videoBuilder),
        ForumCard(forum: doodleMaker),
        ForumCard(forum: videoBuilderDelux),
        ForumCard(forum: videoDashboard),
        ForumCard(forum: videoAppSuite),
        ForumCard(forum: chatterPal),
        ForumCard(forum: avtarBuilder),
        ForumCard(forum: doodleMakerDelux),
      ],
      [
        ForumCard(forum: videoBuilder),
        ForumCard(forum: doodleMaker),
        ForumCard(forum: videoBuilderDelux),
        ForumCard(forum: videoDashboard),
        ForumCard(forum: videoAppSuite),
        ForumCard(forum: chatterPal),
        ForumCard(forum: avtarBuilder),
        ForumCard(forum: doodleMakerDelux),
      ],
      [
        ForumCard(forum: videoBuilder),
        ForumCard(forum: doodleMaker),
        ForumCard(forum: videoBuilderDelux),
        ForumCard(forum: videoDashboard),
        ForumCard(forum: videoAppSuite),
        ForumCard(forum: chatterPal),
        ForumCard(forum: avtarBuilder),
        ForumCard(forum: doodleMakerDelux),
      ],
      [
        ForumCard(forum: videoBuilder),
        ForumCard(forum: doodleMaker),
        ForumCard(forum: videoBuilderDelux),
        ForumCard(forum: videoDashboard),
        ForumCard(forum: videoAppSuite),
        ForumCard(forum: chatterPal),
        ForumCard(forum: avtarBuilder),
        ForumCard(forum: doodleMakerDelux),
      ]
    ][index];
  }

  onTabTap(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }
}
