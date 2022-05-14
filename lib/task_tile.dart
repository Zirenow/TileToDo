import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  late String textContent;
  TaskTile(String text){
    textContent=text;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
          //color: Colors.blue,
          child: Row(
            children: [
              Text(textContent),
              IconButton(
                  onPressed: () => {}, icon: Icon(Icons.text_snippet_outlined)),
              IconButton(onPressed: () => {}, icon: Icon(Icons.delete))
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          )),
    );
  }
}


