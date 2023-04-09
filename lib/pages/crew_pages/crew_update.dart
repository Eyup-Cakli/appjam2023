import 'package:appjam2023/pages/crew_pages/crew.dart';
import 'package:flutter/material.dart';

import '../../models/crew.dart';

class CrewUpdate extends StatefulWidget{
  final List<Crew> crews;

  final int index;

  CrewUpdate(this.crews, this.index);

  @override
  State<StatefulWidget> createState() {
    return _CrewUpdateState(crews: crews, selectedCrew: crews[index-1]);
  }
}

class _CrewUpdateState extends State<CrewUpdate>{

  var formKey = GlobalKey<FormState>();

  late List<Crew> crews;

  late Crew selectedCrew = Crew(0, "", "", "", 0,"");

  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController titleController;
  late TextEditingController pictureController;

  _CrewUpdateState({required this.crews, required this.selectedCrew}){
    firstNameController = TextEditingController(text: selectedCrew.firstName);
    lastNameController = TextEditingController(text: selectedCrew.lastname);
    titleController = TextEditingController(text: selectedCrew.title);
    pictureController = TextEditingController(text: selectedCrew.picture);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4283F1),
        title: const Text(
          "Update Crew Member",
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
            buildPictureField(),
            buildFirstNameField(),
            buildLastNameField(),
            buildTitleField(),
            buildUpdateButton()
          ],
        ),
      ),
    );
  }

  Widget buildPictureField() {
    return TextField(
      decoration: const InputDecoration(labelText: "Enter image URL"),
      controller: pictureController,
    );
  }

  Widget buildFirstNameField() {
    return TextField(
      decoration: const InputDecoration(labelText: "Firstname"),
      controller: firstNameController,
    );
  }

  Widget buildLastNameField() {
    return TextField(
      decoration: const InputDecoration(labelText: "Lastname"),
      controller: lastNameController,
    );
  }

  Widget buildTitleField() {
    return TextField(
      decoration: const InputDecoration(labelText: "Title"),
      controller: titleController,
    );
  }

  Widget buildUpdateButton() {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xFF4283F1)),
      ),
      onPressed: () {
        updateCrew();
        Navigator.pop(context);
      },
      child: Text("Save"),
    );
  }

  void updateCrew(){
    int index = crews.indexWhere((crew) => crew.id == selectedCrew.id);
    if(index != -1){
      setState(() {
        crews[index].firstName = firstNameController.text;
        crews[index].lastname = lastNameController.text;
        crews[index].title = titleController.text;
        crews[index].picture = pictureController.text;
      });
    }
  }

}