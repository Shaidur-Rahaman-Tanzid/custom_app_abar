// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class CustomAppbar extends StatelessWidget {
//   final ScrollController _scrollController = ScrollController();
//   final RxDouble _pixelsScrolled = 0.0.obs;

//   CustomAppbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     _scrollController.addListener(_updatePixelsScrolled);

//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: SingleChildScrollView(
//               controller: _scrollController,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   SizedBox(
//                     height: 250,
//                     width: double.infinity,
//                     child: Image.asset(
//                       'assets/WhatsApp Image 2023-08-07 at 3.40 1.png',
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   Obx(
//                         () => Text(
//                       'Pixels scrolled: ${_pixelsScrolled.value}',
//                       style: const TextStyle(color: Colors.black),
//                     ),
//                   ),
//                   ListView.builder(
//                     itemCount: 30,
//                     physics: const NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         title: Text("$index"),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             top: 2,
//             left: 0,
//             right: 0,
//             child: Obx(
//                   () => Container(
//                 height: 60,
//                 decoration: BoxDecoration(
//                   color: _pixelsScrolled.value >= 230.0
//                       ? Colors.white
//                       : Colors.grey.withOpacity(0.5),
//                   borderRadius: BorderRadius.circular(3),
//                 ),
//                 child:  Padding(
//                   padding: EdgeInsets.only(top: 20,left: 15,right: 15),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Icon(Icons.arrow_back,color: Color(0xffF65857), size: 30),

//                       const Text(
//                         "AppBar",
//                         style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffF65857)),
//                       ),
//                       Icon(Icons.more_vert, size: 30),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _updatePixelsScrolled() {
//     _pixelsScrolled.value = _scrollController.position.pixels;
//   }

// }
