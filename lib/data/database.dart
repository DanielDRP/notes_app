import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  //
  List toDoList = [];

  // reference box
  final _myBox = Hive.box('myBox');

  // run this method if is the 1st time opening the app
  void createInitialData(){
    toDoList = [
      ["This is a task", false],
      ["This is a completed task", true]
    ];
  }

  // load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }

}