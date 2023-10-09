import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/signup.dart';

class Welcome extends StatelessWidget {
  static const String screenroute = 'Welcome';

  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30,
                fontFamily: "myfont",
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(132, 1, 159, 207), width: 10),
                  borderRadius: BorderRadius.circular(27),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.zero,
                  child: Image.asset('images/hospital3.jpg'),
                ),
              ),
              SizedBox(
                height: 30,
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Login.screenroute);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "log in",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Signup.screenroute);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple[100]),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                ),
              ),
              SizedBox(
                height: 90,
              )
            ],
          ),
        ));
  }
}
