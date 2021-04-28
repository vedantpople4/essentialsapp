import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:essentialsapp/models/NotesOperation.dart';

class AddScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String titleText;
    String descriptionText;
    return Scaffold(
      appBar: AppBar(
        title: Text('Note Maker'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Title',
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              onChanged: (value){
                titleText = value;
              },
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Description',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                onChanged: (value){
                  descriptionText = value;
                },
              ),
            ),
            FlatButton(
              onPressed: (){
                Provider.of<NotesOperation>(
                  context, listen: false).addNewNote(titleText, descriptionText);
                Navigator.pop(context);
                },
              color: Colors.black,
              child: Text('Add Note', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}