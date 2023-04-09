class Task{
  late int id;
  late String taskName;
  late String taskDescription;
  late int percentile;
  late String status;

  Task(int id, String taskName, String taskDescription, int percentile){
    this.id =id;
    this.taskName = taskName;
    this.taskDescription = taskDescription;
    this.percentile = percentile;

  }


  Task.withId(int id,String taskName, String taskDescription, int percentile){
    this.id = id;
    this.taskName = taskName;
    this.taskDescription = taskDescription;
    this.percentile = percentile;
  }


  String get getStatus{
    String message = " ";
    if(this.percentile == 0){
      message = "Yeni Başlangıç";
    }else if(this.percentile <= 50){
      message = "Devam Ediyor.";
    }
    else if(this.percentile == 100){
      message = "Görev Tamamlandı.";
    }
    this.status = message;
    return this.status;
  }
}

// String get getStatus{
//   Container(
//     color: Colors.green,
//     child: Material(
//       child: CheckboxListTile(
//         tileColor: Colors.red,
//         title: const Text('CheckboxListTile with red background'),
//         value: true,
//         onChanged:(bool? value) { },
//       ),
//     ),
//   );
// }