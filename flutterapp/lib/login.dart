import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/home.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ignore: unused_import
import 'package:flutter_application_1/welcome.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
  static const String screenroute = 'login';
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final auth = FirebaseAuth.instance;

  late String email;

  late String password;

  bool showspinner = false;

  Future signIn() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.purple[400],
          child: Icon(Icons.home),
        ),
        appBar: AppBar(
          title: Text(
            "Log in",
            style: TextStyle(
                fontSize: 30,
                fontFamily: "myfont",
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple[300],
        ),
        body: ModalProgressHUD(
          inAsyncCall: showspinner,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.purple[800],
                        ),
                        labelText: "Your Email :",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        suffix: Icon(
                          Icons.visibility,
                          color: Colors.purple[900],
                        ),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.purple[800],
                          size: 19,
                        ),
                        labelText: "Password :",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      showspinner = true;
                    });

                    try {
                      var user = await auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (user != Null) {
                        Navigator.pushNamed(context, home.screennroute);
                        print("dakshii khedam");
                      } else {
                        print("dakshi makhedamsh");
                      }
                      setState(() {
                        showspinner = false;
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: Text(
                    "log in",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
