import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:oraleye/screens/home.dart';
import 'package:oraleye/screens/profiledata.dart';

import 'auth/login.dart';

class Controller extends StatefulWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    if (FirebaseAuth.instance.currentUser != null) {
      return EditProfilePage();
    } else {
      return LoginPage();
    }
  }
}
