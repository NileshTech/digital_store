import 'package:digital_store_project/model/topic.dart';

class Forum {
  final String title;
  final String imagePath;
  final String rank;
  final List<Topic> topics;
  final String threads;
  final String subs;
  final String affiliateLink;

  Forum(
      {this.title,
      this.imagePath,
      this.rank,
      this.threads,
      this.subs,
      this.topics,
      this.affiliateLink});
}

final videoBuilder = Forum(
    title: "Video Builder",
    imagePath: "assets/images/video_builder.jpg",
    rank: "31",
    threads: "88",
    subs: "The Total Solution To Creating \nKiller 3D and Animated Videos...",
    topics: fortniteTopics,
    affiliateLink: "https://jvz7.com/c/1542335/268249");

final doodleMaker = Forum(
    title: "Doodle Maker",
    imagePath: "assets/images/intelligence-img-1.png",
    rank: "31",
    threads: "88",
    subs: "The Total Solution To Creating \nKiller 3D and Animated Videos...",
    topics: fortniteTopics,
    affiliateLink: "https://jvz6.com/c/1542335/357045");

final videoBuilderDelux = Forum(
    title: "VideoBuilder\n Deluxe",
    imagePath: "assets/images/zpj1mhnhndvjae1sfnsq.png",
    rank: "31",
    threads: "88",
    subs:
        'Unlock  Hidden Features Worth Over ${5000} With VideoBuilder Deluxe Upgrade!',
    topics: fortniteTopics,
    affiliateLink: "https://jvz7.com/c/1542335/269038");

final videoDashboard = Forum(
    title: "Video Dashboard",
    imagePath: "assets/images/s13-bg.jpg",
    rank: "31",
    threads: "88",
    subs:
        'World-Class Social Automation Technology To Attract More Customers and Grow Your Business For Free!',
    topics: fortniteTopics,
    affiliateLink: "https://jvz1.com/c/1542335/346135");

final videoAppSuite = Forum(
    title: "Video App \nSuite",
    imagePath: "assets/images/s03-img.jpg",
    rank: "31",
    threads: "88",
    subs:
        'Activate Your Ready-Made Video Software Business Without Any Budget, Marketing Skills or Technical Experience!',
    topics: fortniteTopics,
    affiliateLink: "https://jvz1.com/c/1542335/331881");

final chatterPal = Forum(
    title: "Chatter Pal",
    imagePath: "assets/images/s04-img.jpg",
    rank: "31",
    threads: "88",
    subs:
        "Leverage Futuristic 'Artificial Intelligence' Technology To Skyrocket Your Sales and Leads...",
    topics: fortniteTopics,
    affiliateLink: "https://jvz1.com/c/1542335/324615");

final avtarBuilder = Forum(
    title: "Avtar Builder",
    imagePath: "assets/images/competition.png",
    rank: "31",
    threads: "88",
    subs:
        "Leverage Cutting-Edge 3D Animation, Artificial Intelligence & Award Winning Multilingual Technologies To Create Spectacular Videos In Any Language In Minutes!",
    topics: fortniteTopics,
    affiliateLink: "https://jvz1.com/c/1542335/362141");

final doodleMakerDelux = Forum(
    title: "Doodle Maker Deluxe",
    imagePath: "assets/images/e3vczqrt7eabmkk489zn.png",
    rank: "31",
    threads: "88",
    subs:
        "Premium Features... Next Level Profits! Unlock Hidden Features Worth Over 7,400 With The Deluxe Upgrade...",
    topics: fortniteTopics,
    affiliateLink: "https://jvz8.com/c/1542335/357199");

final forums = [
  videoBuilder,
  doodleMaker,
  videoBuilderDelux,
  videoDashboard,
  videoAppSuite,
  chatterPal,
  avtarBuilder,
  doodleMakerDelux
];
