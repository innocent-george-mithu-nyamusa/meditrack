import 'package:flutter/material.dart';
import 'package:meditrack/models/user.dart';
import 'package:meditrack/pages/homepage.dart';
import 'package:meditrack/pages/loginPage.dart';
import 'package:provider/provider.dart';

class WrapperPage extends StatefulWidget {
  const WrapperPage({Key? key}) : super(key: key);

  @override
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  @override
  Widget build(BuildContext context) {
    final AppUser? user = Provider.of<AppUser?>(context);

    if(user == null) {
      return LoginPage();
    } else {
      return Homepage();
    }
  }
}
