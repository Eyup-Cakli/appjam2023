import 'package:appjam2023/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroSliderPage extends StatefulWidget {
  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        backgroundImage: "assets/images/slider_first.png",
        backgroundImageFit: BoxFit.fill,
        /*title: "APP JAM",
        //description: "Slide 1 Description",
        centerWidget: Image.asset(
          "assets/images/app_puzzle_img.png",
          height: 225,
          width: 225,
        ),

        backgroundColor: Color(0xff2A38B7),*/
      ),
    );

    slides.add(
      new Slide(
        backgroundImage: "assets/images/slider_second.png",
        backgroundImageFit: BoxFit.fill,
        /*title: "Slide 2 Title",
        description: "Slide 2 Description",
        pathImage: "assets/images/homepage_img_8.png",
        backgroundColor: Color(0xff2A38B7),*/
      ),
    );

    slides.add(
      new Slide(
        backgroundImage: "assets/images/slider_third.png",
        backgroundImageFit: BoxFit.fill,
        /*title: "Slide 3 Title",
        description: "Slide 3 Description",
        pathImage: "assets/images/homepage_img_8.png",
        backgroundColor: Color(0xff2A38B7),*/
      ),
    );

    slides.add(
      new Slide(
        backgroundImage: "assets/images/slider_fourth.png",
        backgroundImageFit: BoxFit.fill,
        /*title: "Slide 3 Title",
        description: "Slide 3 Description",
        pathImage: "assets/images/homepage_img_8.png",
        backgroundColor: Color(0xff2A38B7),*/
      ),
    );

    slides.add(
      new Slide(
        backgroundImage: "assets/images/slider_fifth.png",
        backgroundImageFit: BoxFit.fill,
        /*title: "Slide 3 Title",
        description: "Slide 3 Description",
        pathImage: "assets/images/homepage_img_8.png",
        backgroundColor: Color(0xff2A38B7),*/
      ),
    );
  }

  void onDonePress() {
    // Intro slider tamamlandığında yapılacak işlemler buraya yazılabilir.
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => AuthPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
