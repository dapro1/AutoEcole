import 'package:flutter/material.dart';
import 'package:ihmtry/Screens/HomePage.dart';
import 'package:ihmtry/Screens/LessonChosing.dart';
import 'package:ihmtry/Widgets/StandardLessonForm.dart';

class ObligationOne extends StatelessWidget {
  const ObligationOne({Key? key}) : super(key: key);
  static String obligatoinOne = 'obligatoinOne';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return StandardPanneauxs(
        height: height,
        panneaux: 'Les Panneaux',
        PanneauxDesc: 'D\'obligation',
        imagePath: "assets/ObligationOne.jpg",
        backToLesson: () {
          Navigator.pushNamed(context, LessonsChoose.ToLessonsChoises);
        },
        Home: () {
          Navigator.pushNamed(context, MyHomePage.HomePage);
        },
        pageNumber: '1/2',
        isNext: true,
        Next: () {
          Navigator.pushNamed(context, ObligationTwo.obligatoinTwo);
        });
  }
}

class ObligationTwo extends StatelessWidget {
  const ObligationTwo({Key? key}) : super(key: key);
  static String obligatoinTwo = 'obligatoinTwo';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return StandardPanneauxs(
        height: height,
        panneaux: 'Les Panneaux',
        PanneauxDesc: 'D\'obligation',
        imagePath: "assets/ObligationTwo.jpg",
        backToLesson: () {
          Navigator.pushNamed(context, ObligationOne.obligatoinOne);
        },
        Home: () {
          Navigator.pushNamed(context, MyHomePage.HomePage);
        },
        pageNumber: '2/2',
        isNext: false,
        Next: () {});
  }
}
