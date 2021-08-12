import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditrack/widgets/helpers/ensure_visible.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool checkBoxValue = false;

  final Map<String, dynamic> _formData = {
    'username': null,
    'firstname': null,
    'lastname': null,
    'email': null,
    'password_hash': null
  };

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailFocusNode = FocusNode();
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _firstnameFocusNode = FocusNode();
  final _lastnameFocusNode = FocusNode();


  final _emailTextController = TextEditingController();
  final _usernameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _firstnameTextController = TextEditingController();
  final _lastnameTextController = TextEditingController();

  Widget _buildEmailTextField() {
    return EnsureVisibleWhenFocused(
      focusNode: _emailFocusNode,
      child: TextFormField(
        focusNode: _emailFocusNode,
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
        controller: _emailTextController,
        validator: (String? value) {
          if (value!.isEmpty ||
              !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                  .hasMatch(value)) {
            return 'Please enter a valid email';
          }
        },
        onSaved: (String? value) {
          _formData['email'] = value;
        },
      ),
    );
  }

  Widget _buildUsernameTextField() {

    return EnsureVisibleWhenFocused(
      focusNode: _usernameFocusNode,
      child: TextFormField(
        focusNode: _usernameFocusNode,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w300,
            color: Colors.grey.shade700),
        decoration: InputDecoration(
          labelText: 'Username',
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
          suffixIcon: Icon(Icons.account_circle,
              color: Colors.grey.shade400),
        ),
        controller: _usernameTextController,
        validator: (String? value) {
          if (value!.isEmpty || value.length < 5) {
            return 'Username is required and should be 5+ characters long.';
          }
        },
        onSaved: (String? value) {
          _formData['username'] = value;
        },
      ),
    );
  }

  Widget _buildFirstnameTextField() {
    return EnsureVisibleWhenFocused(
      focusNode: _firstnameFocusNode,
      child: TextFormField(
        focusNode: _firstnameFocusNode,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w300,
            color: Colors.grey.shade700),
        decoration: InputDecoration(
          labelText: 'Firstname',
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
          suffixIcon: Icon(Icons.account_circle,
              color: Colors.grey.shade400),
        ),
        controller: _firstnameTextController,
        validator: (String? value) {
          if (value!.isEmpty || value.length < 5) {
            return 'Firstname is required and should be 5+ characters long.';
          }
        },
        onSaved: (String? value) {
          _formData['firstname'] = value;
        },
      ),
    );
  }

  Widget _buildLastnameTextField() {
    return EnsureVisibleWhenFocused(
      focusNode: _usernameFocusNode,
      child: TextFormField(
        focusNode: _usernameFocusNode,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w300,
            color: Colors.grey.shade700),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'Lastname',
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
          suffixIcon: Icon(Icons.edit,
              color: Colors.grey.shade400),
        ),
        controller: _usernameTextController,
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Lastname is required.';
          }
        },
        onSaved: (String? value) {
          _formData["lastname"] = value;
        },
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return EnsureVisibleWhenFocused(
      focusNode: _passwordFocusNode,
      child: TextFormField(
        focusNode: _passwordFocusNode,
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
        controller: _passwordTextController,
        validator: (String? value) {
          if (value!.isEmpty || value.length < 6) {
            return 'Password invalid';
          }
        },
        onSaved: (String? value) {
          _formData['password'] = value;
        },
      ),
    );
  }

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
                    child: Text("Create Account",
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      _buildUsernameTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildFirstnameTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildLastnameTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildEmailTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(

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
                              child: Text("SIGN UP FOR FREE",
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
                            'OR SIGN UP WITH',
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
                      Text("Already have an account?",
                          style: GoogleFonts.montserrat(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/login');
                        },
                        child: Text("SIGN IN",
                            style: GoogleFonts.montserrat(
                                color: Color(0xff54ccf5),
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
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
