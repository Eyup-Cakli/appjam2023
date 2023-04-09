import 'package:appjam2023/pages/academy/academi.dart';
import 'package:appjam2023/pages/chat/chat_page.dart';
import 'package:appjam2023/pages/crew_pages/crew_page.dart';
import 'package:appjam2023/pages/tasks/task_chapter.dart';
import 'package:flutter/material.dart';

class TerminalPage extends StatefulWidget {
  @override
  _TerminalPage createState() => _TerminalPage();
}

class _TerminalPage extends State<TerminalPage> {
  get customColor => Color.fromRGBO(248, 185, 5, 1.0);
  get customColor2 => Color.fromRGBO(232, 67, 53, 1.0);
  get customColor3 => Color.fromRGBO(66, 131, 241, 1.0);
  get customColor4 => Color.fromRGBO(52, 166, 82, 1.0);

  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF4283F1),
          leading: Image.network('https://i.hizliresim.com/civ60wh.png'),
          title: const Text(
              "Task Manager",
              style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),),
        ),
        body: ListView(
            children: [
              Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Container(
                              width: 80,
                              height: 40,
                              color: Colors.white,
                            ),
                          ],

                        ),]),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 8.0),
                      Row(
                        children: [

                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => TaskChapter()))
                                  .then((value) => setState(() {}));
                              //onPress işlemleri burada yapılır
                            },
                            child: Container(
                              width: 130.0,
                              height: 160.0,
                              decoration: BoxDecoration(
                                color: customColor3,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                children: [
                                  Image.network(
                                    'https://i.hizliresim.com/ipuovi5.png',
                                    width: 200.0,
                                    height: 136.0,
                                    fit: BoxFit.fitHeight,
                                    alignment: Alignment.center,
                                  ),
                                  Positioned(
                                    bottom: 130.0,
                                    left: 7.0,
                                    child: Text(
                                      'Tasks',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20.0),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatPage()))
                                  .then((value) => setState((){}));
                              // onPressed işlemleri burada yapılır
                            },
                            child: Container(
                              width: 120.0,
                              height: 120.0,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                children: [
                                  Image.network(
                                    'https://i.hizliresim.com/poq54j9.png',
                                    width: 250.0,
                                    height: 300.0,
                                    fit: BoxFit.fitHeight,
                                    alignment: Alignment.topRight,
                                  ),
                                  Positioned(
                                    bottom: 60.0,
                                    left: 25.0,
                                    child: Text(
                                      'Chat',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )

                        ],
                      )



                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [

                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> CrewPage()))
                                  .then((value) => setState((){}));
                              // onPressed işlemleri burada yapılır
                            },
                            child: Container(
                              width: 140.0,
                              height: 140.0,
                              decoration: BoxDecoration(
                                color: customColor,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 10.0,
                                    left: 10.0,
                                    child: Text(
                                      'Crew',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10.0,
                                    right: 10.0,
                                    child: Image.network(
                                      'https://i.hizliresim.com/cjxcsty.png',
                                      width: 110.0,
                                      height: 109.0,
                                      fit: BoxFit.cover,
                                      alignment: Alignment.topLeft,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(width: 20.0),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> academi()))
                                  .then((value) => setState((){}));
                              // onPressed işlemleri burada yapılır
                            },
                            child: Container(
                              width: 130.0,
                              height: 160.0,
                              decoration: BoxDecoration(
                                color: customColor4,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network(
                                    'https://i.hizliresim.com/bc9ya12.png',
                                    width: 100.0,
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topLeft,
                                  ),
                                  SizedBox(height: 10.0),
                                  Positioned(
                                    bottom: 100.0,
                                    left: 14.0,
                                    child: Text(
                                      'Academy Advancement',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )

                        ],
                      )



                    ],
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://i.hizliresim.com/d54sq6i.png',),
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.topRight,
                      ),
                    ),
                  )


                ],
              ),
            ]));
  }
}