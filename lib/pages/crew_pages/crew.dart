import 'dart:math';

class Crew{
  late int id;
  late String firstName;
  late String lastname;
  late String title;
  late int statusValue;
  late String status;
  late String picture;

  Crew(int id, String firstName, String lastname, String title, int statusValue, String picture){
    this.id = id;
    this.firstName = firstName;
    this.lastname = lastname;
    this.title = title;
    this.statusValue = statusValue;
    this.picture = picture;
  }

  Crew.WithNoId(String firstName, String lastname, String title, String picture){
    this.firstName = firstName;
    this.lastname = lastname;
    this.title = title;
    this.picture = picture;
  }

  String get getStatus{
    String message ="";
    if(this.statusValue==0){
      message = "Offline";
    }else if(this.statusValue==1){
      message="Online";
    }else if(this.statusValue==2){
      message="Away";
    }
    else if(this.statusValue==null){
      message = "Offline";
    }
    this.status=message;
    return this.status;
  }
}

