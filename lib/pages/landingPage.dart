
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditrack/models/user.dart';
import 'package:meditrack/utilities/utlities.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double pageWidth = MediaQuery.of(context).size.width;
    double pageHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: pageWidth,
        height: pageHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: pageHeight * 0.18,
            ),
            PulsatingAnimatedButton(pageWidth, pageHeight),
            SizedBox(
              height: pageHeight * 0.05,
            ),
            Text(
              "MEDITRACK",
              style: TextStyle(
                  color: primaryText, fontSize: 45, fontWeight: FontWeight.w400, letterSpacing: 5.5),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Meditrack Emergency Ambulance Service",
                style: TextStyle(
                    color: primaryText, fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            Text(
              "Reliable . Effective . Convenient",
              style: TextStyle(
                  color: primaryText, fontSize: 15, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}

class PulsatingAnimatedButton extends StatefulWidget {
  final width;
  final height;

  const PulsatingAnimatedButton(this.width, this.height, {Key? key})
      : super(key: key);

  @override
  _PulsatingAnimatedButtonState createState() =>
      _PulsatingAnimatedButtonState();
}

class _PulsatingAnimatedButtonState extends State<PulsatingAnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;


  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween(begin: 0.0, end: 12.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
    _animationController.repeat(reverse: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: () {
          Navigator.of(context).pushNamed("/wrapper");
        },
        child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, _) {
              return Ink(
                width: widget.width * 0.4,
                height: widget.height * 0.4,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: primaryBlue,
                    shape: BoxShape.circle,
                    boxShadow: [
                      for (int i = 1; i <= 2; i++)
                        BoxShadow(
                            color: primaryBlue
                                .withOpacity(_animationController.value / 2),
                            spreadRadius: _animation.value * i * 3)
                    ]),
                child: Icon(
                  CupertinoIcons.heart_slash_circle_fill,
                  color: Colors.white,
                  size: widget.width * 0.2,
                ),
              );
            }),
    );
  }
}
