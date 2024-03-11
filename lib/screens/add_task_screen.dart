import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;
  
  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),  
        ),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Text('Add Task',
          textAlign:TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.lightBlueAccent,
          ),
          ),
          TextField(
             autofocus: true,
             textAlign: TextAlign.center,
             onChanged: (nextText) {
              newTaskTitle = nextText;
             },
              decoration: InputDecoration(
              hintText: 'Enter Something',
              contentPadding: EdgeInsets.all(20.0),
              
            )
          ),
          TextButton(
            
           style: ButtonStyle(
          
               backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
            ),
            child: Text('ADD',
            style: TextStyle(
              color: Colors.white,
            ),
            
            ),
            onPressed: () { 
              addTaskCallback(newTaskTitle);
              },
            ),
        ],
        ),
      ),
    );
  }
}