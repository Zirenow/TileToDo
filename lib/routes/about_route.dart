import 'package:flutter/material.dart';
import 'package:tile_to_do/app_drawer.dart';

class AboutRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("About")),
      body:Center(
        child:Text("TileToDo is a very simple task managing app with open source code")
      )
    );
  }
}