import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditrack/utilities/utlities.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: DrawClip1(),
                    child: Container(
                        color: Color(0xff56ccf2), height: size.height / 2.9),
                  ),
                  ClipPath(
                    clipper: DrawClip(),
                    child: Container(
                        color: Color(0xff5660f3).withOpacity(0.9),
                        height: size.height / 2.9),
                  ),
                  Positioned(
                    bottom: 50,
                    left: 40,
                    child: Text("Sign In With Account",
                        style: GoogleFonts.montserrat(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  color: Colors.grey.shade500,
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 3.0),
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(-3.0, 3.0),
                                  blurRadius: 3.0),
                            ])),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    TextFormField(
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey.shade700),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade400),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Color(0xff54ccf5), width: 2)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Color(0xff54ccf5), width: 2)),
                        border:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                        suffixIcon: Icon(Icons.email_rounded,
                            color: Colors.grey.shade400),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey.shade700),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade400),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Color(0xff54ccf5), width: 2)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Color(0xff54ccf5), width: 2)),
                        border:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                        suffixIcon: Icon(Icons.lock_outlined,
                            color: Colors.grey.shade400),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: checkBoxValue,
                          onChanged: (bool? value) {
                            setState(() {
                              if (checkBoxValue == true) {
                                checkBoxValue = false;
                              } else {
                                checkBoxValue = true;
                              }
                            });
                          },
                          activeColor: Color(0xff54ccf5),
                        ),
                        Container(
                          width: size.width * 0.64,
                          child: Text(
                            'I agree to the terms and conditions',
                            overflow: TextOverflow.fade,
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w300),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: null,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color(0xff58c9f3),
                                Color(0xff5661f0)
                              ])),
                          child: Center(
                            child: Text("SIGN IN",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            height: 20,
                            thickness: 2,
                            indent: 40,
                            endIndent: 10,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        Text(
                          'OR SIGN UP',
                          style: GoogleFonts.montserrat(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w400),
                        ),
                        Expanded(
                          child: Divider(
                            height: 20,
                            thickness: 2,
                            indent: 10,
                            endIndent: 40,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("You don't have an account?",
                        style: GoogleFonts.montserrat(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('/signup');
                      },
                      child: Text("SIGN UP",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff54ccf5),
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget social(String url) {
  return Material(
    borderRadius: BorderRadius.circular(8.00),
    elevation: 2,
    child: Padding(
        padding: EdgeInsets.all(8),
        child: Image.network(
          url,
          width: 28,
          height: 28,
        )),
  );
}

class DrawClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width / 3.8, 0);
    path.lineTo(size.width * 0.8, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.8 + 15, size.height * 0.7 + 15,
        size.width * 0.8 + 30, size.height * 0.7);
    path.lineTo(size.width, size.height * 0.6 - 10);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 50);
    path.lineTo(size.width / 3.8 - 5, 150);
    path.quadraticBezierTo(
        size.width / 3.8 + 30, 185, size.width / 3.8 + 57, 150);
    path.lineTo(size.width / 1.4, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}