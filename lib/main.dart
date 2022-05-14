import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'task_tile.dart';
import 'app_drawer.dart';

import 'routes/about_route.dart';
import 'routes/ht_use.dart';

void main() {
  runApp(TileToDo());
}

class TileToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "TileToDo",
        home: RootPage(),
        routes:{
          "/root":(context)=>RootPage(),
          "/about":(context)=>AboutRoute(),
          "/how":(context)=>HowToUseRoute()
    });
  }
}

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
         color:Colors.blue),
      child: Scaffold(
          backgroundColor: Colors.blue,
          drawer: AppDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.add,
              color: Colors.blueGrey,
            ),
            onPressed: () => showDialog(context: context, builder: (_) => dialogBox())
          ),
          body: Center(
            child: ListView(
              children: makeList(),
            ),
          )),
    );
  }
}
Widget dialogBox(){
  return AlertDialog(
    content: TextField(
      maxLines: 3,
      decoration: InputDecoration(
        hintText: "Add new task..."
      ),
    ),
    actions: [
      MaterialButton(
        onPressed: ()=>{},
        child: Text("Done"),
      )
    ],
  );
}
List<Widget> makeList(){
  List<Widget> list = <Widget>[];
  for (int i =0;i<=5;i++){
    list.add(new TaskTile("Tile: $i"));
  }
  return list;
}