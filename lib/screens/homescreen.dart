import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:meditrack/utilities/utlities.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _iconColor = primaryBlue;
  Color _textColor = primaryText;

  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;
    double pageHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: pageWidth * 0.25,
                height: pageHeight * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  focusColor: primaryBlue.withOpacity(0.5),
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        AssetImage("assets/cardiogram.png"),
                        color: _iconColor,
                        size: 30,
                      ),
                      Text(
                        "Heart Attack",
                        style: TextStyle(
                            color: _textColor, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: pageWidth * 0.25,
                height: pageHeight * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  focusColor: primaryBlue.withOpacity(0.5),
                  splashColor: Colors.white,
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        AssetImage("assets/footprint.png"),
                        color: _iconColor,
                        size: 30,
                      ),
                      Text(
                        "Animal Attack",
                        style: TextStyle(
                            color: primaryText, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: pageWidth * 0.25,
                height: pageHeight * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  focusColor: primaryBlue.withOpacity(0.5),
                  splashColor: Colors.white,
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        AssetImage("assets/blood.png"),
                        color: primaryBlue,
                        size: 30,
                      ),
                      Text(
                        "Bleeding",
                        style: TextStyle(
                            color: primaryText, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: pageWidth * 0.25,
                height: pageHeight * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  focusColor: primaryBlue.withOpacity(0.5),
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.sun_max,
                        color: _iconColor,
                        size: 30,
                      ),
                      Text(
                        "HeatStroke",
                        style: TextStyle(
                            color: _textColor, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: pageWidth * 0.25,
                height: pageHeight * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  focusColor: primaryBlue.withOpacity(0.5),
                  splashColor: Colors.white,
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.waveform_path_ecg,
                        color: primaryBlue,
                        size: 30,
                      ),
                      Text(
                        "Hyperthermic Syndrome",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: primaryText, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: pageWidth * 0.25,
                height: pageHeight * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  focusColor: primaryBlue.withOpacity(0.5),
                  splashColor: Colors.white,
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        AssetImage("assets/accident.png"),
                        color: _iconColor,
                        size: 30,
                      ),
                      Text(
                        "Accident",
                        style: TextStyle(
                            color: primaryText, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: pageWidth * 0.25,
                height: pageHeight * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  focusColor: primaryBlue.withOpacity(0.5),
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        AssetImage("assets/lung.png"),
                        color: _iconColor,
                        size: 30,
                      ),
                      Text(
                        "Anaphylactic Shock",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: _textColor, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: pageWidth * 0.25,
                height: pageHeight * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  focusColor: primaryBlue.withOpacity(0.5),
                  splashColor: Colors.white,
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        AssetImage("assets/male.png"),
                        color: _iconColor,
                        size: 30,
                      ),
                      Text(
                        "Headache",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: primaryText, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: pageWidth * 0.25,
                height: pageHeight * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  focusColor: primaryBlue.withOpacity(0.5),
                  splashColor: Colors.white,
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        AssetImage("assets/tooth.png"),
                        color: _iconColor,
                        size: 30,
                      ),
                      Text(
                        "Urgent Dentistry",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: primaryText, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: pageWidth * 0.25,
                height: pageHeight * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  focusColor: primaryBlue.withOpacity(0.5),
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.more_horiz,
                        color: _iconColor,
                        size: 30,
                      ),
                      Text(
                        "More",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: _textColor, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: pageHeight * 0.02,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10));
                    }
                    return ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10)); //CHoose any shape you want
                  },
                ),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return primaryBlue;
                    }
                    return primaryBlue;
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.white;
                    }
                    return Colors.white;
                  },
                ),
                padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return EdgeInsets.all(15.0);
                    }
                    return EdgeInsets.all(15.0);
                  },
                ),
              ),
              child: Center(
                child: Text(
                  "Call Ambulance",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
              ))
        ],
      ),
    );
  }
}
