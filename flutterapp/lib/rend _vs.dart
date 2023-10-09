import 'package:flutter/material.dart';

class rdv extends StatelessWidget {
  static const String screenroute = 'rdv';
  const rdv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text(
          "LES RENDEZ-VOUS",
          style: TextStyle(
              fontSize: 30, fontFamily: "myfont", fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
    );
  }
}
