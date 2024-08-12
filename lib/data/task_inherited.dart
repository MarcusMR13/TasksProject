import 'package:flutter/material.dart';
import 'package:projetos/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList = [
    Task("Play with Myers", "assets/images/myers.jpg", 5,),
    Task("Play with Artist", "assets/images/artist.jpg", 4),
    Task("Play with Clown", "assets/images/clown.jpg", 5,),
  ];

  void newTask({required String name, required String photo, required int difficulty}){
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited old) {
    return old.taskList.length != taskList.length;
  }
}
