import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_application_1/pdf_viewer.dart';
import 'package:flutter_document_picker/flutter_document_picker.dart';


class analyses extends StatelessWidget {
  static const String screenroute = 'analyses';
  const analyses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text(
          "LES ANALYSES",
          style: TextStyle(
              fontSize: 30, fontFamily: "myfont", fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Container(
                child: Text('                                  __________________\n \n   la listes des analyses: ',
                style: TextStyle(fontSize: 15), ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('analyses1_pdf',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
               SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('analyses2_pdf',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
            
          SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('analyses3_pdf',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
               SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('analyses4_pdf',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
               SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('analyses5_pdf',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
               SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('analyses6_pdf',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
            ],
          )
        ),
      
    
    );
  }
}
