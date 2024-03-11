import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/task_tile.dart';
import 'package:flutter_demo/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List <Task> tasks=[
    Task( name: 'Buy milk'),
    Task( name: 'Buy eggs'),
    Task( name: 'Buy bread'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return TaskTile(taskTitle: 
          tasks[index].name,
         isChecked: tasks[index].isDone,
         );
      },itemCount: tasks.length,
    );

      
  }
}
