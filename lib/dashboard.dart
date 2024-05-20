// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  var height, width;
  @override
  Widget build(BuildContext context) {
    //TODO: implement build
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
                
              ),
              height: height * 0.45,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 35,
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.sort,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                  Container(
                    height: 65,
                      width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("images/Photoroom-20240517_215231.png") 
                      ),
                    ),
                   
                    ),
                
                    
                                         ],
                                ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 15,
                    right: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good moorning Daniel!",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      )
                    ],
                  ),
               )
                
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

