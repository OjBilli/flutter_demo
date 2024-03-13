import 'package:flutter/material.dart';
import 'package:flutter_demo/models/task_data.dart';
import 'package:flutter_demo/screens/tasks_screen.dart';
// import 'package:flutter_demo/screens/provider_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demo/models/task_data.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
       create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
        // home: ProviderScreen(),
      ),
    );
  }
}