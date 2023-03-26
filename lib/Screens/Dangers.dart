import 'package:flutter/material.dart';
import 'package:ihmtry/Screens/HomePage.dart';
import 'package:ihmtry/Screens/LessonChosing.dart';
import 'package:ihmtry/Widgets/StandardLessonForm.dart';

class DangerOne extends StatelessWidget {
  const DangerOne({Key? key}) : super(key: key);
  static String Dangerone = 'Dangerone';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return StandardPanneauxs(
        height: height,
        panneaux: 'Les Panneaux',
        PanneauxDesc: 'de danger',
        imagePath: "assets/basicimages/dangertwo.jpg",
        backToLesson: () {
          Navigator.pushNamed(context, LessonsChoose.ToLessonsChoises);
        },
        Home: () {
          Navigator.pushNamed(context, MyHomePage.HomePage);
        },
        pageNumber: '1/2',
        isNext: true,
        Next: () {
          Navigator.pushNamed(context, DangerTwo.Dangertwo);
        });
  }
}

class DangerTwo extends StatelessWidget {
  const DangerTwo({Key? key}) : super(key: key);
  static String Dangertwo = 'Dangertwo';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return StandardPanneauxs(
        height: height,
        panneaux: 'Les Panneaux',
        PanneauxDesc: 'de danger',
        imagePath: "assets/basicimages/dangerone.jpg",
        backToLesson: () {
          Navigator.pushNamed(context, DangerOne.Dangerone);
        },
        Home: () {
          Navigator.pushNamed(context, MyHomePage.HomePage);
        },
        pageNumber: '2/2',
        isNext: false,
        Next: () {});
  }
}
