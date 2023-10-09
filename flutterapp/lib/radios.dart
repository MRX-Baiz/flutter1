import 'package:flutter/material.dart';

class radios extends StatelessWidget {
  static const String screenroute = 'radios';
  const radios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text(
          "LES RADIOS",
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
                child: Text('                                  __________________\n \n   la listes des radios : ',
                style: TextStyle(fontSize: 15), ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('radio1_pdf       ',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
               SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('radio2_pdf       ',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
            
          SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('radio3_pdf       ',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
               SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('radio4_pdf       ',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
               SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('radio5_pdf       ',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
               SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              
               child:ElevatedButton(onPressed: (){},
               
               child: Text('radio6_pdf       ',
                style: TextStyle(fontSize: 22),),
               style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue[300])),
               ),),
            ],
          )
        ),
      
    );
  }
}
