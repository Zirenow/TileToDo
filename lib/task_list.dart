import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
class TaskData with ChangeNotifier {
  List _data=<TaskTile>[];
  List get getData=>_data;
  TaskData(){
    _append();
  }
  void _append(){
    _data.add(TaskTile("Empty"));
  }
  void registerNew(String content){
    _append();
    _data.add(new TaskTile(content));
    //print("${_data.runtimeType}");
    notifyListeners();
  }

}