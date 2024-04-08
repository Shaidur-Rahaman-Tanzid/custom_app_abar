import 'package:flutter/material.dart';
import 'appbar_two.dart';

class HomeTwo extends StatefulWidget {
  @override
  _HomeTwoState createState() => _HomeTwoState();
}

class _HomeTwoState extends State<HomeTwo> {
  late ScrollController scrollController;
  double pixelsScrolled = 0.0;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(updatePixelsScrolled);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void updatePixelsScrolled() {
    setState(() {
      pixelsScrolled = scrollController.position.pixels;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height, // Set a finite height
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/WhatsApp Image 2023-08-07 at 3.40 1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(height: 100, color: Colors.white),
                  Container(height: 100, color: Colors.white),
                  Container(height: 100, color: Colors.white),
                  Container(height: 100, color: Colors.white),
                  Container(height: 100, color: Colors.white),
                  Container(height: 100, color: Colors.white),
                  Container(height: 100, color: Colors.white),
                  Container(height: 100, color: Colors.white),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomAppBar(
              title: 'Custom App Bar',
              backgroundColor:
              pixelsScrolled >= 240.0 ? Colors.white : Colors.grey.withOpacity(0.4),
              leadingIcon: Icons.arrow_back,
              trailingIcon: Icons.more_vert,
              onLeadingPressed: () {
                // Handle leading icon press
              },
              onTrailingPressed: () {
                // Handle trailing icon press
              },
            ),
          ),
        ],
      ),
    );
  }
}
