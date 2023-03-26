import 'package:flutter/material.dart';
import 'package:ihmtry/Screens/HomePage.dart';
import 'package:ihmtry/Screens/LessonChosing.dart';
import 'package:ihmtry/Widgets/PiriorityForm.dart';

class PiriorityOne extends StatelessWidget {
  const PiriorityOne({Key? key}) : super(key: key);
  static String Piriorityone = 'Piriorityone';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return PiriorityForm(
      height: height,
      panneaux: 'Les Panneaux',
      PanneauxDesc: 'D\'obligation',
      imagePath: "assets/basicimages/quione.png",
      backToLesson: () {
        Navigator.pushNamed(context, LessonsChoose.ToLessonsChoises);
      },
      Home: () {
        Navigator.pushNamed(context, MyHomePage.HomePage);
      },
      pageNumber: '1/3',
      isNext: true,
      Next: () {
        Navigator.pushNamed(context, PiriorityTwo.Pirioritytwo);
      },
      isTitleVisible: true,
      Data: """
Lorsqu\'il n\'y a pas de signalisation, il faut appliquer la règle de la priorité à droite. \n Les véhicules A et B ont un véhicule à leur droite : \n le véhicule C est donc prioritaire et passe en premier. \n Ensuite, le véhicule B n\'aura plus personne sur sa droite : \n il sera prioritaire par rapport au véhicule A. \n Enfin, la voie est libre pour le véhicule A : il passe. \n """,
      Title: 'Carrefour',
    );
  }
}

class PiriorityTwo extends StatelessWidget {
  const PiriorityTwo({Key? key}) : super(key: key);
  static String Pirioritytwo = 'Pirioritytwo';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return PiriorityForm(
      height: height,
      panneaux: 'Les Panneaux',
      PanneauxDesc: 'D\'obligation',
      imagePath: "assets/basicimages/quitwo.png",
      backToLesson: () {
        Navigator.pushNamed(context, PiriorityOne.Piriorityone);
      },
      Home: () {
        Navigator.pushNamed(context, MyHomePage.HomePage);
      },
      pageNumber: '2/3',
      isNext: true,
      Next: () {
        Navigator.pushNamed(context, PiriorityThree.Pirioritythree);
      },
      isTitleVisible: false,
      Data: """
Le véhicule A rencontre un panneau de priorité ponctuelle. \n
Il est donc prioritaire et passe avant le véhicule B. \n
Le véhicule B rencontre un cédez-le-passage. \n
Il laisse donc la priorité au véhicule A.
      """,
      Title: '',
    );
  }
}

class PiriorityThree extends StatelessWidget {
  const PiriorityThree({Key? key}) : super(key: key);
  static String Pirioritythree = 'Pirioritythree';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return PiriorityForm(
      height: height,
      panneaux: 'Les Panneaux',
      PanneauxDesc: 'D\'obligation',
      imagePath: "assets/basicimages/quithree.png",
      backToLesson: () {
        Navigator.pushNamed(context, PiriorityTwo.Pirioritytwo);
      },
      Home: () {
        Navigator.pushNamed(context, MyHomePage.HomePage);
      },
      pageNumber: '3/3',
      isNext: false,
      Next: () {
        // Navigator.pushNamed(context, ObligationTwo.obligatoinTwo);
      },
      isTitleVisible: false,
      Data: """
Le véhicule A est sur une route prioritaire. \n
Il passe donc en premier. \n
Le véhicule B rencontre un cédez-le-passage. \n
Il doit donc laisser la priorité au véhicule A.
      """,
      Title: '',
    );
  }
}
