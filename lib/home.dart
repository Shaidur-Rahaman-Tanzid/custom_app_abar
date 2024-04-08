// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'custom_app_bar.dart';
//
// class Home extends StatefulWidget {
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   final ScrollController scrollController = ScrollController();
//   var pixelsScrolled = 0.0;
//
//   void updatePixelsScrolled() {
//     pixelsScrolled = scrollController.position.pixels;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     scrollController.addListener(updatePixelsScrolled);
//     return Scaffold(
//       body: SingleChildScrollView(
//         controller: scrollController,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 250,
//               width: double.infinity,
//               child: CustomAppbar(
//                 path: 'assets/WhatsApp Image 2023-08-07 at 3.40 1.png',
//                 title: 'Custom App Bar',
//                 backgroundColor: pixelsScrolled >= 230.0
//                     ? Colors.white
//                     : Colors.grey.withOpacity(0.5),
//                 leading: IconButton( // Example leading widget
//                   icon: Icon(Icons.menu),
//                   onPressed: () {
//                   },
//                 ),
//                 trailing: IconButton(
//                   icon: Icon(Icons.search),
//                   onPressed: () {
//                   },
//                 ),
//               ),
//             ),
//             Column(
//               children: [
//                 Container(
//                   height: 200, // Height of other content
//                   child: Center(
//                     child: Text('Other content here'),
//                   ),
//                 ),
//                 ListView.builder(
//                   itemCount: 30,
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   itemBuilder: (context, index) {
//                     return Text('$index');
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
