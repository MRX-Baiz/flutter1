import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = FirebaseFirestore.instance;
late User connectedUser; //this will give us the email

class chat extends StatefulWidget {
  static const String screenroute = 'chat';

  chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  final messageTextcontroller = TextEditingController();

  final _auth = FirebaseAuth.instance;

  String? messageText;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentuser();
  }

  void getCurrentuser() {
    try {
      final User = _auth.currentUser;
      if (User != null) {
        connectedUser = User;
        print(connectedUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  //void getMessages() async {
  //final messages = await _firestore.collection('messages').get();
  //for (var messages in messages.docs) {
  //  print(messages.data());
  //   }
  //  }

  //void messagesStreams() async {
  //await for (var snapshot in _firestore.collection('messages').snapshots()) {
  //    for (var messages in snapshot.docs) {
  //      print(messages.data());
  //   }
  //  }
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 236, 90, 200),
          title: Row(children: [
            Icon(Icons.chat_sharp),
            SizedBox(
              width: 10,
            ),
            Text('CHAT'),
          ]),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close))
          ],
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MessageStreamBuilder(),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.black, width: 2),
              )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: TextField(
                    controller: messageTextcontroller,
                    onChanged: (value) {
                      messageText = value;
                    },
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      hintText: 'write your message here...',
                      border: InputBorder.none,
                    ),
                  )),
                  TextButton(
                      onPressed: () {
                        messageTextcontroller.clear();
                        _firestore.collection('messages').add({
                          'text': messageText,
                          'sender': connectedUser.email,
                          'time': FieldValue.serverTimestamp(),
                        });
                      },
                      child: Text('send',
                          style: TextStyle(
                            color: Colors.blue[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ))),
                ],
              ),
            )
          ],
        )));
  }
}

class MessageStreamBuilder extends StatelessWidget {
  const MessageStreamBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('messages').orderBy('time').snapshots(),
      builder: (context, snapshot) {
        List<MessageLine> messageWidgets = [];

        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.blue,
            ),
          );
        }
        final messages = snapshot.data!.docs.reversed;
        for (var message in messages) {
          final messageText = message.get('text');
          final messageSender = message.get('sender');
          final currentUser = connectedUser.email;

          final messageWidget = MessageLine(
            sender: messageSender,
            text: messageText,
            isMe: currentUser == messageSender,
          );
          messageWidgets.add(messageWidget);
        }
        return Expanded(
          child: ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: messageWidgets,
          ),
        );
      },
    );
  }
}

class MessageLine extends StatelessWidget {
  const MessageLine({this.text, this.sender, required this.isMe, super.key});

  final String? sender;

  final String? text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            '$sender',
            style: TextStyle(fontSize: 10, color: Colors.purple),
          ),
          Material(
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
            elevation: 5,
            color: isMe ? Colors.blue[800] : Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                '$text',
                style: TextStyle(
                    fontSize: 15, color: isMe ? Colors.white : Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
