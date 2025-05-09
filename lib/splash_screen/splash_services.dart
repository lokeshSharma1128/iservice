import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login_screen/login_screen.dart';


class SplashServices {
  void isLogin(BuildContext context) {
    // final auth = FirebaseAuth.instance;
    // final user = auth.currentUser;
    // if(user!=null){
    //   Timer(
    //       Duration(seconds: 3),
    //           () => Navigator.pushAndRemoveUntil(
    //           context,
    //           MaterialPageRoute(builder: (context) => HomeScreen()),
    //               (route) => false));
    // }else{
      Timer(
          Duration(seconds: 1),
              () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
                  (route) => false));
    // }
  }
}
