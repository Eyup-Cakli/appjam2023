
import 'package:appjam2023/pages/tasks/task_add.dart';
import 'package:appjam2023/pages/tasks/task_update.dart';
import 'package:appjam2023/pages/tasks/tasks.dart';
import 'package:flutter/material.dart';


class TaskChapter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TaskChapterState();
  }
}
class _TaskChapterState extends State<TaskChapter>{
  List <Task> tasks = [
    Task(1, "Problem Tanımlama", ".....", 0),
    Task(2, "Çözüm Fikri Üretme", ".....", 50),
    Task(3,"Proje Taslağı Oluşturma", ".....", 100),
  ];

  Task selectedTask = Task.withId(0, "", "", 0);

  //get status => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF4283F1),
          title: Text(
              " Tasks",
              style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        body: buildBody());
  }
//Column yerine row yazarsak sütun sütun yazdırır.
  // listView liste oluşturmak için tam bu uygulamaya göre
  //listView - text - row
  Widget buildBody(){
    return Column(
      children: [
        Expanded(  //expended koruyucu konteynır alan
          child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  title: Text(tasks[index].taskName + " " + tasks[index].taskDescription),
                  subtitle: Text("Last Status : " + tasks[index].getStatus),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage("https://i.hizliresim.com/civ60wh.png"),
                  ),
                  trailing: buildStatusIcon(tasks[index].percentile),
                  onTap: (){
                    setState(() {
                      this.selectedTask= tasks[index];
                    });
                    print(this.selectedTask.taskName);
                  },
                );
              }),
        ),
        Text("Selected Task : " + selectedTask.taskName),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> TaskAdd(tasks)))
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> TaskUpdate(tasks, selectedTask.id)))
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
                        title: const Text("Sil"),
                        content: const Text("Are you sure want to delete this task?"),
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

   buildStatusIcon(int percentile) {
    if(percentile == 0){
      return Icon(Icons.clear);
    }else if(percentile <= 50){
      return Icon(Icons.album);
    }else if (percentile == 100){
      return Icon(Icons.done);
    }
  }
}
