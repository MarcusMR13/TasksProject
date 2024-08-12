import 'package:flutter/material.dart';
import 'package:projetos/data/task_inherited.dart';
import 'package:projetos/screens/form_screen.dart';

class Initialscreen extends StatefulWidget {
  const Initialscreen({super.key});

  @override
  State<Initialscreen> createState() => _InitialscreenState();
}

class _InitialscreenState extends State<Initialscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text(
          'Tasks',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top:8, bottom: 70),
        children: TaskInherited.of(context).taskList,
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'GoToForms',
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (newContext) => FormScreen(taskContext: context,)));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
