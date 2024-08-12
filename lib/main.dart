import 'package:flutter/material.dart';
import 'package:projetos/data/task_inherited.dart';
import 'package:projetos/screens/Initial_screen.dart';

void main() {
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(color: Colors.blue),
      ),
      home: TaskInherited(child: const Initialscreen())
    );
  }
}