
import 'package:appjam2023/pages/tasks/tasks.dart';
import 'package:flutter/material.dart';


class TaskAdd extends StatefulWidget{
  List<Task> tasks;
  TaskAdd(this.tasks);
  @override
  State<StatefulWidget> createState() {
    return _TaskAddState();
  }
}
class _TaskAddState extends State<TaskAdd> {
  var formKey = GlobalKey<FormState>();

  var task = Task(0, "", "", 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
           "New Task",
            style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),),
        backgroundColor: const Color(0xFF4283F1),
      ),
      body: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
              child:Column(
                children: <Widget>[
                  buildtaskNameField(),
                  buildtaskDescriptionField(),
                  buildpercentileField(),
                  buildSubmitButtom()
                ],
              )
          )
      ),
    );
  }

  Widget buildtaskNameField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Task title", hintText: "Interface Design"),
      onSaved: (String? value){
        task.taskName = value!;
      },
    );
  }

  Widget buildtaskDescriptionField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Task description", hintText: "First of all, the theme must be determined!"),
      onSaved: (String? value){
        task.taskDescription = value!;
      },
    );
  }

  Widget buildpercentileField() {
    return TextFormField(
      decoration: const InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 16.0) ,labelText: "What is the Completion Percentage?", hintText: "50"),
      onSaved: (String? value){
        task.taskDescription = value!;
      },
    );
  }
  Widget buildSubmitButtom(){
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xFF34A652)),
      ),
      child: const Text("Save"),
      onPressed: (){
        formKey.currentState?.save();
        widget.tasks.add(task);
        Navigator.pop(context);
      },
    );
  }
}