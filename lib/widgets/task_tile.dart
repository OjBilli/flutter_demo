import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this is the list'),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: false, 
        onChanged: null),
    );
  }
}