import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tile_to_do/app_drawer.dart';

class HowToUseRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("How to use"),
          elevation: 0,
          backgroundColor: Colors.amber,
        ),
        backgroundColor: Colors.amber,
        body: Center(
            child: Text(
          "Add task with the big white button",
          style: TextStyle(color: Colors.white, fontSize: 20),
        )));
  }
}
