import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:meditrack/screens/homescreen.dart';
import 'package:meditrack/screens/mainscreen.dart';
import 'package:meditrack/screens/mapscreen.dart';
import 'package:meditrack/screens/profilescreen.dart';
import 'package:meditrack/utilities/navbar.dart';
import 'package:meditrack/utilities/utlities.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  final screen = [HomeScreen(), MainScreen(), MapScreen(), ProfileScreen()];
  var _pageTitle = "What happened";

  @override
  Widget build(BuildContext context) {
    switch (selectedIndex) {
      case 0:
        _pageTitle = "What Happened ?";
        break;
      case 1:
        _pageTitle = "Options";
        break;
      case 2:
        _pageTitle = "Current Location";
        break;
      case 3:
        _pageTitle = "Profile";
        break;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Platform.isAndroid
              ? Icon(
                  Icons.arrow_back,
                  color: primaryBlue,
                )
              : Icon(CupertinoIcons.back, color: primaryBlue),
        ),
        title: Text(
          _pageTitle,
          style: TextStyle(
              letterSpacing: 1.50,
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: primaryBlue),
        ),
        centerTitle: Platform.isAndroid ? true : true,
        elevation: 50,
        shadowColor: Colors.black.withOpacity(0.9),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                color: primaryBlue,
              ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: primaryBlue,
            ),
          ),
        ],
      ),
      backgroundColor: bgColor,
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.transparent ,
        index: selectedIndex,
        key: NavBarKey.getKey(),
        items: [
          Icon(
            Icons.phone_in_talk,
            color: primaryBlue,
            size: 30,
          ),
          Icon(
            Icons.dashboard,
            color: primaryBlue,
            size: 30,
          ),
          Icon(
            Icons.location_on,
            color: primaryBlue,
            size: 30,
          ),
          Icon(
            Icons.person,
            color: primaryBlue,
            size: 30,
          )
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
      body: screen[selectedIndex],
    );
  }
}
