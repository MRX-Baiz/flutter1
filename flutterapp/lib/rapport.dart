import 'package:flutter/material.dart';

class rapport extends StatelessWidget {
  static const String screenroute = 'rapport';
  const rapport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text(
          "LES RAPPORTS ",
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
                child: Text('                                  __________________\n \n   la listes des rapports : ',
                style: TextStyle(fontSize: 15), ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('rapport1_pdf       ',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
               SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('rapport2_pdf       ',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
            
          SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('rapport3_pdf       ',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
               SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('rapport4_pdf       ',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
               SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('rapport5_pdf       ',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
               SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('rapport6_pdf       ',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
            ],
          )
        ),
      
    );
  }
}
