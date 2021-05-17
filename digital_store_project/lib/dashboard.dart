// import 'package:flare_flutter/flare_actor.dart';
// import 'package:flutter/material.dart';

// class Dashboard extends StatefulWidget {
//   Dashboard({Key key}) : super(key: key);

//   @override
//   _DashboardState createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Padding(
//       padding: const EdgeInsets.only(left: 8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Transform.rotate(
//                       angle: -1.58,
//                       child: Text(
//                         'Email',
//                         textAlign: TextAlign.center,
//                       )),
//                 ),
//                 Expanded(
//                   flex: 3,
//                   child: FlareActor("assets/flare/email.flr",
//                       alignment: Alignment.center,
//                       fit: BoxFit.contain,
//                       animation: "start"),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Transform.rotate(
//                       angle: -1.58,
//                       child: Text(
//                         'SEO\nwebsite',
//                         textAlign: TextAlign.center,
//                       )),
//                 ),
//                 Expanded(
//                   flex: 3,
//                   child: FlareActor("assets/flare/search-engine.flr",
//                       alignment: Alignment.center,
//                       fit: BoxFit.contain,
//                       animation: "Untitled"),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Transform.rotate(
//                       angle: -1.58,
//                       child: Text(
//                         'Video',
//                         textAlign: TextAlign.center,
//                       )),
//                 ),
//                 Expanded(
//                   flex: 3,
//                   child: FlareActor("assets/flare/video.flr",
//                       alignment: Alignment.center,
//                       fit: BoxFit.contain,
//                       animation: "record3"),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Transform.rotate(
//                       angle: -1.58,
//                       child: Text(
//                         'Email',
//                         textAlign: TextAlign.center,
//                       )),
//                 ),
//                 Expanded(
//                   flex: 3,
//                   child: FlareActor("assets/flare/yoga.flr",
//                       alignment: Alignment.center,
//                       fit: BoxFit.contain,
//                       animation: "relax"),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Transform.rotate(
//                       angle: -1.58,
//                       child: Text(
//                         'Animation',
//                         textAlign: TextAlign.center,
//                       )),
//                 ),
//                 Expanded(
//                   child: FlareActor("assets/flare/animation1.flr",
//                       alignment: Alignment.center,
//                       fit: BoxFit.contain,
//                       animation: "swing"),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }
