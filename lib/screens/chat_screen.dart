import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => Container(
          padding: EdgeInsets.all(8),
          child: Text('This Works'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Firestore.instance
              .collection('chats/WEZMY0k6Vm1lOYucThoi/messages')
              .snapshots()
              .listen((data) {
            data.documents.forEach((document) {
              //print(data.documents[0]['text']);
              print(document['text']);
            });
          });
        },
      ),
    );
  }
}
