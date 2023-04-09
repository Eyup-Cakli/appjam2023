
import 'package:appjam2023/pages/academy/moduls/videolist/egitim.dart';
import 'package:appjam2023/pages/academy/moduls/videolist/modul2.dart';
import 'package:appjam2023/pages/academy/moduls/videolist/modul3.dart';
import 'package:appjam2023/pages/academy/moduls/videolist/modul4.dart';
import 'package:appjam2023/pages/academy/moduls/videolist/modul5.dart';
import 'package:appjam2023/pages/academy/moduls/videolist/modul6.dart';
import 'package:appjam2023/pages/academy/moduls/videolist/modul7.dart';
import 'package:appjam2023/pages/academy/moduls/videolist/modul8.dart';
import 'package:appjam2023/pages/academy/moduls/videolist/modul9.dart';
import 'package:flutter/material.dart';

class moduls extends StatefulWidget {
  const moduls({Key? key}) : super(key: key);

  @override
  State<moduls> createState() => _modulsState();
}

class _modulsState extends State<moduls> {


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
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> YoutubePage()))
                            .then((value) => setState((){}));

                        // Container 1'e tıklandığında yapılacak işlemler
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(248,185,5, 0.8)
                        ),
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Modül: 1'),
                                Text('Kullanıcı İçgörüsü Toplama ve Sentezleme'),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.timer),
                                  SizedBox(width: 4),
                                  Text('24dk'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> YoutubePage2()))
                            .then((value) => setState((){}));
                        // Container 1'e tıklandığında yapılacak işlemler
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(232,67,53, 0.8)
                        ),
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Modül: 2'),
                                Text('Fikir Doğrulama'),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.timer),
                                  SizedBox(width: 4),
                                  Text('45dk'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> YoutubePage3()))
                            .then((value) => setState((){}));
                        // Container 1'e tıklandığında yapılacak işlemler
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(66,131,241, 1.8)
                        ),
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Modül: 3'),
                                Text('Kullanıcı Kazanımı & Büyüme Yöntemleri'),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.timer),
                                  SizedBox(width: 4),
                                  Text('46dk'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> YoutubePage4()))
                            .then((value) => setState((){}));
                        // Container 1'e tıklandığında yapılacak işlemler
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(52,166,82, 1.8)
                        ),
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Modül: 4'),
                                Text('Validasyon, İterasyon, Pivot Etmek'),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.timer),
                                  SizedBox(width: 4),
                                  Text('32dk'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> YoutubePage5()))
                            .then((value) => setState((){}));
                        // Container 1'e tıklandığında yapılacak işlemler
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(248,185,5, 0.8)
                        ),
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Modül: 5'),
                                Text('Seviyelere Göre Hedef Belirleme'),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.timer),
                                  SizedBox(width: 4),
                                  Text('42dk'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> YoutubePage6()))
                            .then((value) => setState((){}));
                        // Container 1'e tıklandığında yapılacak işlemler
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(232,67,53, 0.8)
                        ),
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Modül: 6'),
                                Text('KVKK, Fikri Haklar, Şirket Kurulumu ve Regü...'),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.timer),
                                  SizedBox(width: 4),
                                  Text('33dk'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> YoutubePage7()))
                            .then((value) => setState((){}));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(66,131,241, 1.8)
                        ),
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Modül: 7'),
                                Text('Startup Pitching'),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.timer),
                                  SizedBox(width: 4),
                                  Text('47dk'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> YoutubePage8()))
                            .then((value) => setState((){}));
                        // Container 1'e tıklandığında yapılacak işlemler
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(52,166,82, 1.8)
                        ),
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Modül: 8'),
                                Text('Yatırım Çeşitleri & Yatırımlara Göre Farklılıklar'),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.timer),
                                  SizedBox(width: 4),
                                  Text('40dk'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> YoutubePage9()))
                            .then((value) => setState((){}));
                        // Container 1'e tıklandığında yapılacak işlemler
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(248,185,5, 0.8)
                        ),
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Modül: 9'),
                                Text('Girişimlerde Bütçe Yönetimi & Yatırım Kararla'),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.timer),
                                  SizedBox(width: 4),
                                  Text('27dk'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 8),

                  ]
              )
            ]
        )
    );


  }

  modul9() {}
}