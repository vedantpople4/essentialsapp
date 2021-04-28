import 'package:essentialsapp/models/NotesOperation.dart';
import 'package:flutter/material.dart';
import 'package:essentialsapp/screens/home_screen.dart';
import 'package:provider/provider.dart';


void main(){
 runApp(TodoList());
}


class TodoList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider<NotesOperation>(
      create: (context)=> NotesOperation(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}