import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //* box reference
  final _myBox = Hive.box("ToDo App");

//*run for the first time
  void createInirialData() {
    toDoList = [
      ["example 1", false],
      ["example 2", false]
    ];
  }

//*load data from database
  void loadData() {
    toDoList = _myBox.get("ToDo");
  }

  //*update database
  void updateDataBase() {
    _myBox.put("ToDo", toDoList);
  }
}
