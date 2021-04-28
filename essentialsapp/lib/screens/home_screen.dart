import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:essentialsapp/models/NotesOperation.dart';
import 'package:essentialsapp/models/Note.dart';
import 'package:essentialsapp/screens/add_screen.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddScreen()));
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      appBar: AppBar(
        title: Text('Note Maker'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Consumer<NotesOperation>(
        builder: (context,NotesOperation data, child ) {
          return ListView.builder(
              itemCount: data.getNotes.length,
              itemBuilder: (context, index) {
                return NotesCard(data.getNotes[index]);
              }
          );
        }
      ),
    );
  }
}

class NotesCard extends StatelessWidget{
  final Note note;
  NotesCard(this.note);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      margin: EdgeInsets.all(35),
      child : Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(note.description,
            style: TextStyle(fontSize: 17,
            ),
          )],
      ),
    )
    );
  }
}