import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditrack/utilities/utlities.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;


    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              width: screenWidth * 0.96,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(1, 2),
                        blurRadius: 5.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(-1, -2),
                        blurRadius: 5.0,
                        spreadRadius: 1.0),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Sat, 4 April 2021 | 15:34 PM",
                            style: TextStyle(
                                color: primaryDarkGrey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 10.0,
                                    width: 10.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.greenAccent,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.greenAccent,
                                            offset: Offset(0, 0),
                                            blurRadius: 3.0,
                                            spreadRadius: 0.5,
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 9.0),
                                    child: Text(
                                      "Online",
                                      style: TextStyle(
                                          color: primaryDarkGrey,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                color: primaryBlue,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ]),
                  ),
                  Divider(
                    thickness: 0.3,
                    color: primaryDarkGrey,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: screenHeight * 0.09,
                            width: screenWidth * 0.3,
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: primaryLightGrey),
                            child: CircleAvatar(
                              radius: screenWidth * 0.5,
                              backgroundImage:
                                  AssetImage("assets/paramedic-4.jpeg"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ambulance E.M23",
                                style: TextStyle(
                                  color: primaryBlue,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Nkosinathi Dube",
                                style: TextStyle(
                                  color: primaryDarkGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "Paramedic",
                                style: TextStyle(
                                  color: primaryDarkGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: primaryBlue,
                              size: 40.0,
                            ),
                            Text(
                              "map",
                              style: TextStyle(
                                color: primaryDarkGrey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.3,
                    color: primaryDarkGrey,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  CupertinoIcons.plus_app,
                                  color: primaryBlue,
                                ),
                              ),
                              Text(
                                "Headache Emergency | Response Time : 24 mins",
                                style: TextStyle(
                                    color: primaryDarkGrey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),

              width: screenWidth * 0.96,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(1, 2),
                        blurRadius: 5.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(-1, -2),
                        blurRadius: 5.0,
                        spreadRadius: 1.0),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Sat, 4 April 2021 | 15:34 PM",
                            style: TextStyle(
                                color: primaryDarkGrey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 10.0,
                                    width: 10.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.greenAccent,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.greenAccent,
                                            offset: Offset(0, 0),
                                            blurRadius: 3.0,
                                            spreadRadius: 0.5,
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 9.0),
                                    child: Text(
                                      "Online",
                                      style: TextStyle(
                                          color: primaryDarkGrey,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                color: primaryBlue,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ]),
                  ),
                  Divider(
                    thickness: 0.3,
                    color: primaryDarkGrey,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: screenHeight * 0.09,
                            width: screenWidth * 0.3,
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: primaryLightGrey),
                            child: CircleAvatar(
                              radius: screenWidth * 0.5,
                              backgroundImage: AssetImage("assets/user.jpeg"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ambulance P.45",
                                style: TextStyle(
                                  color: primaryBlue,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Shallene Michelle",
                                style: TextStyle(
                                  color: primaryDarkGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "Paramedic",
                                style: TextStyle(
                                  color: primaryDarkGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: primaryBlue,
                              size: 40.0,
                            ),
                            Text(
                              "map",
                              style: TextStyle(
                                color: primaryDarkGrey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.3,
                    color: primaryDarkGrey,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  CupertinoIcons.plus_app,
                                  color: primaryBlue,
                                ),
                              ),
                              Text(
                                "Headache Emergency | Response Time : 24 mins",
                                style: TextStyle(
                                    color: primaryDarkGrey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),

              width: screenWidth * 0.96,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(1, 2),
                        blurRadius: 5.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(-1, -2),
                        blurRadius: 5.0,
                        spreadRadius: 1.0),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Sat, 4 April 2021 | 15:34 PM",
                            style: TextStyle(
                                color: primaryDarkGrey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 10.0,
                                    width: 10.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.greenAccent,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.greenAccent,
                                            offset: Offset(0, 0),
                                            blurRadius: 3.0,
                                            spreadRadius: 0.5,
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 9.0),
                                    child: Text(
                                      "Online",
                                      style: TextStyle(
                                          color: primaryDarkGrey,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                color: primaryBlue,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ]),
                  ),
                  Divider(
                    thickness: 0.3,
                    color: primaryDarkGrey,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: screenHeight * 0.09,
                            width: screenWidth * 0.3,
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: primaryLightGrey),
                            child: CircleAvatar(
                              radius: screenWidth * 0.5,
                              backgroundImage:
                                  AssetImage("assets/paramedic-1.jpeg"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ErMars 49W Ex1",
                                style: TextStyle(
                                  color: primaryBlue,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Panashe Sibanda",
                                style: TextStyle(
                                  color: primaryDarkGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "Paramedic",
                                style: TextStyle(
                                  color: primaryDarkGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: primaryBlue,
                              size: 40.0,
                            ),
                            Text(
                              "map",
                              style: TextStyle(
                                color: primaryDarkGrey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.3,
                    color: primaryDarkGrey,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  CupertinoIcons.plus_app,
                                  color: primaryBlue,
                                ),
                              ),
                              Text(
                                "Headache Emergency | Response Time : 24 mins",
                                style: TextStyle(
                                    color: primaryDarkGrey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              width: screenWidth * 0.96,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(1, 2),
                        blurRadius: 5.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(-1, -2),
                        blurRadius: 5.0,
                        spreadRadius: 1.0),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Sat, 4 April 2021 | 15:34 PM",
                            style: TextStyle(
                                color: primaryDarkGrey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 10.0,
                                    width: 10.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.greenAccent,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.greenAccent,
                                            offset: Offset(0, 0),
                                            blurRadius: 3.0,
                                            spreadRadius: 0.5,
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 9.0),
                                    child: Text(
                                      "Online",
                                      style: TextStyle(
                                          color: primaryDarkGrey,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                color: primaryBlue,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ]),
                  ),
                  Divider(
                    thickness: 0.3,
                    color: primaryDarkGrey,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: screenHeight * 0.09,
                            width: screenWidth * 0.3,
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: primaryLightGrey),
                            child: CircleAvatar(
                              radius: screenWidth * 0.5,
                              backgroundImage:
                                  AssetImage("assets/paramedic-2.jpeg"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mars 32 P 45",
                                style: TextStyle(
                                  color: primaryBlue,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Orison Mickelson",
                                style: TextStyle(
                                  color: primaryDarkGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "Paramedic",
                                style: TextStyle(
                                  color: primaryDarkGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: primaryBlue,
                              size: 40.0,
                            ),
                            Text(
                              "map",
                              style: TextStyle(
                                color: primaryDarkGrey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.3,
                    color: primaryDarkGrey,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  CupertinoIcons.plus_app,
                                  color: primaryBlue,
                                ),
                              ),
                              Text(
                                "Headache Emergency | Response Time : 24 mins",
                                style: TextStyle(
                                    color: primaryDarkGrey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),

              width: screenWidth * 0.96,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(1, 2),
                        blurRadius: 5.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(-1, -2),
                        blurRadius: 5.0,
                        spreadRadius: 1.0),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Sat, 4 April 2021 | 15:34 PM",
                            style: TextStyle(
                                color: primaryDarkGrey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 10.0,
                                    width: 10.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.greenAccent,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.greenAccent,
                                            offset: Offset(0, 0),
                                            blurRadius: 3.0,
                                            spreadRadius: 0.5,
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 9.0),
                                    child: Text(
                                      "Online",
                                      style: TextStyle(
                                          color: primaryDarkGrey,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                color: primaryBlue,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ]),
                  ),
                  Divider(
                    thickness: 0.3,
                    color: primaryDarkGrey,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: screenHeight * 0.09,
                            width: screenWidth * 0.3,
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: primaryLightGrey),
                            child: CircleAvatar(
                              radius: screenWidth * 0.5,
                              backgroundImage:
                                  AssetImage("assets/paramedic-4.jpeg"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ambulance E.M23",
                                style: TextStyle(
                                  color: primaryBlue,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Micah Shabba ",
                                style: TextStyle(
                                  color: primaryDarkGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "Paramedic",
                                style: TextStyle(
                                  color: primaryDarkGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: primaryBlue,
                              size: 40.0,
                            ),
                            Text(
                              "map",
                              style: TextStyle(
                                color: primaryDarkGrey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.3,
                    color: primaryDarkGrey,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  CupertinoIcons.plus_app,
                                  color: primaryBlue,
                                ),
                              ),
                              Text(
                                "Headache Emergency | Response Time : 24 mins",
                                style: TextStyle(
                                    color: primaryDarkGrey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
