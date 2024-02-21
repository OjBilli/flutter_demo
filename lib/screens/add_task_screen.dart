import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              // add our task to list
              },
            ),
        ],
        ),
      ),
    );
  }
}