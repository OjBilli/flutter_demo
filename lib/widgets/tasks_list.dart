import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/task_tile.dart';
import 'package:flutter_demo/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
        itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return TaskTile(taskTitle: 
            taskData.tasks[index].name,
           isChecked: taskData.tasks[index].isDone,
           checkboxCallback: (bool? checkboxState){
              taskData.updateTask(task);
             }, 
             longPressCallback: () { 
              taskData.deleteTask(task);
              },
           );
        },itemCount: taskData.taskCount,
      );
      },
      
    );

      
  }
}
