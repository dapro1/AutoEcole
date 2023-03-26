import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ihmtry/Screens/HomePage.dart';
import 'package:ihmtry/Screens/LessonChosing.dart';
import 'package:ihmtry/Widgets/StandardLessonForm.dart';

class InredisOne extends StatelessWidget {
  const InredisOne({Key? key}) : super(key: key);
  static String InterdOne = "InterdOne";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return StandardPanneauxs(
        height: height,
        panneaux: 'Les Panneaux',
        PanneauxDesc: 'D\'interdit',
        imagePath: "assets/interdisone.jpg",
        backToLesson: () {
          Navigator.pushNamed(context, LessonsChoose.ToLessonsChoises);
        },
        Home: () {
          Navigator.pushNamed(context, MyHomePage.HomePage);
        },
        pageNumber: '1/2',
        isNext: true,
        Next: () {
          Navigator.pushNamed(context, InterdisTwo.InterdTwo);
        });
  }
}

class InterdisTwo extends StatelessWidget {
  const InterdisTwo({Key? key}) : super(key: key);
  static String InterdTwo = "InterdTwo";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return StandardPanneauxs(
        height: height,
        panneaux: 'Les Panneaux',
        PanneauxDesc: 'D\'interdit',
        imagePath: "assets/interdistwo.jpg",
        backToLesson: () {
          Navigator.pushNamed(context, InredisOne.InterdOne);
        },
        Home: () {
          Navigator.pushNamed(context, MyHomePage.HomePage);
        },
        pageNumber: '2/2',
        isNext: false,
        Next: () {});
  }
}
