import 'package:appjam2023/pages/academy/moduls/moduller.dart';
import 'package:flutter/material.dart';

class academi extends StatefulWidget {
  const academi({Key? key}) : super(key: key);

  @override
  State<academi> createState() => _academiState();
}

class _academiState extends State<academi> {


  get customColor => Color.fromRGBO(248,185,5, 1.0);
  get customColor2 => Color.fromRGBO(232,67,53, 1.0);
  get customColor3 => Color.fromRGBO(66,131,241, 1.0);
  get customColor4 => Color.fromRGBO(52,166,82, 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4283F1),
        title: Text(" Akademi İlerlemesi",
            style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
          children: [
      Column(
      children: [
      Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Text(
        'Teknoloji Girişimciliği Eğitimleri',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    ),
    SizedBox(height: 16),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            SizedBox(height: 8.0),
            Row(
              children: [
                Container(
                  width: 1,
                  height: 10,
                  color: Colors.white,
                ),

                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> moduls()))
                        .then((value) => setState((){}));
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
                          'https://i.hizliresim.com/b83zjcj.png',
                          width: 117.0,
                          height: 144.0,
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.bottomRight,
                        ),
                        Positioned(
                          bottom: 6.0,
                          left: 7.0,
                          child: Text(
                            'Temel Girişimcilik',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8.0,
                          right: 8.0,
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                color: Colors.white,
                                size: 21,
                              ),
                              SizedBox(width: 4.0),
                              Text(
                                '338dk',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 20.0),
                InkWell(
                  onTap: () {
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
                          'https://i.hizliresim.com/3vxun59.png',
                          width: 117.0,
                          height: 144.0,
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.bottomRight,
                        ),
                        Positioned(
                          bottom: 55.0,
                          left: 1.0,
                          child: Text(
                            'Girişimciler için Hk',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8.0,
                          right: 8.0,
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                color: Colors.white,
                                size: 21,
                              ),
                              SizedBox(width: 4.0),
                              Text(
                                '104dk',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
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
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  width: 140.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    color: customColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://i.hizliresim.com/3g81bgg.png',
                        width: 110.0,
                        height: 113.0,
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.bottomRight,
                      ),
                      SizedBox(height: 10.0),
                      Positioned(
                        bottom: 10.0,
                        left: 12.0,
                        child: Text(
                          'Girişimciler için Hk',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 8.0,
                  right: 8.0,
                  child: Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                        size: 21,
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        '177dk',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: 20.0),
            Stack(
              children: [
                Container(
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
                        'https://i.hizliresim.com/filbkpu.png',
                        width: 100.0,
                        fit: BoxFit.contain,
                        alignment: Alignment.topLeft,
                      ),
                      SizedBox(height: 10.0),
                      Positioned(
                        bottom: 55.0,
                        left: 1.0,
                        child: Text(
                          'Girişimciler için Hk',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 8.0,
                  right: 8.0,
                  child: Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                        size: 21,
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        '77dk',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 4),
        Divider(
          color: Colors.grey,
          height: 20,
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
          child: Text(
            'Teknoloji Girişimciliği Eğitimleri',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        GestureDetector(
          onTap: () {
          },
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/homepage_img_8.png'),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Eğitim',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Yazılımcılar İçin İngilizce Eğitimi',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(height: 8.0),
                    Text(
                      '1693dk',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: customColor4,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 4),


      ]
    )
    ]
      )
    );


  }
}