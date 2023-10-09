import 'package:flutter/material.dart';
import 'package:flutter_application_1/CHAT.dart';
import 'package:flutter_application_1/analyses.dart';
import 'package:flutter_application_1/radios.dart';
import 'package:flutter_application_1/rapport.dart';
import 'package:flutter_application_1/rend%20_vs.dart';

class home extends StatelessWidget {
  static const String screennroute = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/34492145?v=4#'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'NOM : user',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: 15,
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(9, 3, 4, 0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: 500,
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Column(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, analyses.screenroute);
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.purple[300]),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 91, vertical: 10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(27))),
                            ),
                            child: Text(
                              "Les Analyses",
                              style: TextStyle(fontSize: 22),
                            ))
                      ],
                    )),
                    Container(
                        child: Column(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, radios.screenroute);
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.purple[300]),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 91, vertical: 10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(27))),
                            ),
                            child: Text(
                              "LES RADIOS  ",
                              style: TextStyle(fontSize: 22),
                            ))
                      ],
                    )),
                    Container(
                        child: Column(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, rapport.screenroute);
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.purple[300]),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 91, vertical: 10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(27))),
                            ),
                            child: Text(
                              "LE RAPPORT  ",
                              style: TextStyle(fontSize: 22),
                            ))
                      ],
                    )),
                    Container(
                        child: Column(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, rdv.screenroute);
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.purple[300]),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 90, vertical: 14)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(27))),
                            ),
                            child: Text(
                              "VOS RENDEZ VOUS",
                              style: TextStyle(fontSize: 16),
                            ))
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      child: Text('chat with support here'),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, chat.screenroute);
                        },
                        child: Text('CHAT'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
                      child: ClipRect(
                        child: Image.asset('images/hospital.jpg'),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
