// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Colors.grey[400],
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                // Add decoration if needed
              ),
              height: height * 0.45,
              width: width,
              child: Stack( // Use Stack for positioning
                children: [
                  // Positioned image at the top right corner
                  Positioned(
                    top: 15, // Adjust positioning as needed
                    right: 15, // Adjust positioning as needed
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage("images/Photoroom-20240517_215231.png"),
                        ),
                      ),
                    ),
                  ),
                  // Greeting and clock text with spacing (Using Text widget)
                  Padding(
                    padding: EdgeInsets.only(top: 35, left: 15, right: 15),
                    // z-index: 1, // Optional, if needed for better visibility
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning,\nDaniel. Today is ${DateTime.now().toString().split(' ')[0].split('-')[2]}.${DateTime.now().toString().split(' ')[0].split('-')[1]}',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.black, // Ensure color is visible
                          ),
                        ),
                        SizedBox(height: 10), // Add spacing between texts
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              height: height * 0.52,
              width: width,
            ),
          ],
        ),
      ),
    );
  }
}
