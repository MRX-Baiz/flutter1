// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/CHAT.dart';
import 'package:flutter_application_1/analyses.dart';
import 'package:flutter_application_1/radios.dart';
import 'package:flutter_application_1/rapport.dart';
import 'package:flutter_application_1/rend%20_vs.dart';
import 'package:flutter_application_1/welcome.dart';
import 'package:flutter_application_1/home.dart';

import 'package:flutter_application_1/login.dart';

import 'package:flutter_application_1/signup.dart';


import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Welcome.screenroute,
      routes: {
        Welcome.screenroute: (context) =>Welcome(),
        Login.screenroute: (context) => Login(),
        Signup.screenroute: (context) => Signup(),
        home.screennroute: (context) => home(),    
        chat.screenroute: (context) => chat(),
        analyses.screenroute: (context) =>analyses(),
        radios.screenroute: (context) =>radios(),
        rapport.screenroute: (context) =>rapport(),
        rdv.screenroute: (context) =>rdv(),
        
      },
    );
  }
}
