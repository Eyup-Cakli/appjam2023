import 'package:appjam2023/pages/crew_pages/crew.dart';
import 'package:appjam2023/pages/crew_pages/crew_add.dart';
import 'package:appjam2023/pages/crew_pages/crew_update.dart';
import 'package:flutter/material.dart';

class CrewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CrewPageState();
  }
}

class _CrewPageState extends State<CrewPage>{

  List<Crew> crews =[
    Crew(1, "Ahmet", "Arslan", "Flutter Developer", 1, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCwrRIZY21Ubv0zn9vkfjYFmsMiMl96Q6Hsw&usqp=CAU"),
    Crew(2, "Mehmet", "Can", "Program Manager", 0,"https://www.westend61.de/images/0001411501pw/portrait-of-confident-young-male-student-in-corridor-of-university-MASF19101.jpg"),
    Crew(3, "Sena", "Yılmaz", "Tester", 2,"https://www.officeforstudents.org.uk/media/a582b5b6-7664-4cd4-b3b2-4229482a63f1/abss-report-pr.jpg")
  ];

  Crew selectedCrew = Crew(0,"No one", "", "", 0,"");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4283F1),
        title: const Text("Crew",
          style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),),
      ),
      body:  buildBody());
  }

  Widget buildBody(){
    return Column(
      children: [
        Expanded(
            child:ListView.builder(
              itemCount: crews.length,
                itemBuilder: (BuildContext context, int index){
                return ListTile(
                  title: Text(crews[index].firstName+" "+crews[index].lastname),
                  subtitle: Text("Unvan : " + crews[index].title + "  [" + crews[index].getStatus + "]"),
                  leading: CircleAvatar(
                    backgroundImage:  NetworkImage(crews[index].picture),
                  ),
                  trailing: buildStatusIcon(crews[index].statusValue),
                  onTap: (){
                    setState(() {
                      this.selectedCrew = crews[index];
                    });
                    print(selectedCrew.firstName);
                  },
                );
              }
            ),
        ),
        Text("Selected crew member : " + selectedCrew.firstName),
        Row(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xFF34A652)),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CrewAdd(crews)))
                      .then((value) => setState((){}));
                },
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.add),
                    SizedBox(width: 5.0,),
                    Text("Add")
                  ],
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xFF4283F1)),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CrewUpdate(crews, selectedCrew.id)))
                      .then((value) => setState(() {}));
                },
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.update),
                    SizedBox(width: 5.0,),
                    Text("Update")
                  ],
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xFFE84335)),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Del"),
                        content: const Text("Are you sure you want to disable the crew member?"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("No"),
                          ),
                          TextButton(
                            onPressed: () {

                            },
                            child: const Text("Yes"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.delete),
                    SizedBox(width: 5.0,),
                    Text("Del")
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }

    buildStatusIcon(int statusValue) {
    if(statusValue == 0){
      return const Icon(Icons.circle, color: Color(0xFFE84335));
    }else if(statusValue == 1){
      return const Icon(Icons.circle, color: Color(0xFF34A652));
    }else if(statusValue == 2){
      return const Icon(Icons.circle, color: Color(0xFFF8B905));
    }
    else if(statusValue == null){
      return const Icon(Icons.circle, color: Color(0xFFE84335));
    }
  }
}
