import 'package:appjam2023/pages/crew_pages/crew.dart';
import 'package:flutter/material.dart';

import '../../models/crew.dart';


class CrewAdd extends StatefulWidget{
  late List<Crew> crews;

  CrewAdd(this.crews);

  @override
  State<StatefulWidget> createState() {
    return _CrewAddState();
  }
}
class _CrewAddState extends State<CrewAdd> {

  var formKey = GlobalKey<FormState>();

   Crew crew = Crew(0, "", "", "", 0, "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Crew Member",
          style: TextStyle(
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),),
        backgroundColor: const Color(0xFF4283F1),
      ),
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.all(20.0),
              child: Form(
                  child:Column(
                    children: <Widget>[
                      buildIdField(),
                      buildNameField(),
                      buildLastNameField(),
                      buildTitleField(),
                      buildStatusValueField(),
                      buildSubmitButton()
                    ],
                  )
              )
          ),
        ],
      ),
    );
  }

  Widget buildIdField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(labelText: "ID", hintText: "1"),
      onSaved: (String? value){
        crew.id = int.parse(value ?? "");
      },
    );
  }

  Widget buildNameField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Firstname", hintText: "Ahmet"),
      onSaved: (String? value){
        crew.firstName = value ?? "";
      },
    );
  }

  Widget buildLastNameField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Lastname", hintText: "Yılmaz"),
      onSaved: (String? value){
        crew.lastname = value ?? "";
      },
    );
  }

  Widget buildTitleField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Title", hintText: "Program Manager"),
      onSaved: (String? value){
        crew.title = value ?? "";
      },
    );
  }

  Widget buildStatusValueField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(labelText: "Status Value", hintText: "1"),
      onSaved: (String? value){
        crew.statusValue = int.parse(value ?? "");
      },
    );
  }

  Widget buildSubmitButton(){
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xFF34A652)),
      ),
      /*onPressed: (){
        if (formKey.currentState != null){
          formKey.currentState!.save();
        }
        widget.crews.add(crew);
        Navigator.pop(context);
      },*/
        onPressed: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            widget.crews.add(crew);
            Navigator.pop(context);
          }
        },
      child: const Text("Save")
    );
  }
}
