import 'package:appjam2023/pages/tasks/tasks.dart';
import 'package:flutter/material.dart';

import '../../models/tasks.dart';

class TaskUpdate extends StatefulWidget{
  final List<Task> tasks;
  
  final int index;
  
  TaskUpdate(this.tasks, this.index);

  @override
  State<StatefulWidget> createState() {
    return _TaskUpdateState(tasks: tasks, selectedTask: tasks[index-1]);
  }
}

class _TaskUpdateState extends State<TaskUpdate>{

  var formKey = GlobalKey<FormState>();

  late List<Task> tasks;

  late Task selectedTask = Task(0, "", "", 0);

  _TaskUpdateState({required this.tasks, required this.selectedTask}){
    taskNameController = TextEditingController(text: selectedTask.taskName);
    taskDescriptionController = TextEditingController(text: selectedTask.taskDescription);
    taskPercentileController = TextEditingController(text: selectedTask.percentile.toString());
  }

  late TextEditingController taskNameController;
  late TextEditingController taskDescriptionController;
  late TextEditingController taskPercentileController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4283F1),
        title: const Text(
            "Update Task",
            style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding:const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            buildTaskNameField(),
            buildTaskDescriptionField(),
            buildPercentileField(),
            buildUpdateButton()
          ],
        ),
      ),
    );
  }

  Widget buildTaskNameField() {
      return TextField(
        decoration: const InputDecoration(labelText: "Task name"),
        controller: taskNameController,
      );
}


  Widget buildTaskDescriptionField() {
    return TextField(
      decoration: const InputDecoration(labelText: "Task  description"),
      controller: taskDescriptionController,
    );
  }

  buildPercentileField() {
    return TextField(
      decoration: const InputDecoration(labelText: "Task completion percentage"),
      controller: taskPercentileController,
    );
  }

  Widget buildUpdateButton() {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xFF4283F1)),
      ),
      onPressed: () {
        updateTask();
        Navigator.pop(context);
      },
      child: Text("Update"),
    );
  }

  void updateTask() {
    int index = tasks.indexWhere((task) => task.id == selectedTask.id);
    if(index != -1){
      setState(() {
        tasks[index].taskName = taskNameController.text;
        tasks[index].taskDescription = taskDescriptionController.text;
        tasks[index].percentile = int.parse(taskPercentileController.text);
      });
    }
  }
}