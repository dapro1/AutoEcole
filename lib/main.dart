import 'package:flutter/material.dart';
import 'package:ihmtry/NewHomeSc.dart';
import 'package:ihmtry/Screens/Dangers.dart';
import 'package:ihmtry/Screens/Exercices/ExercicesPiriority/ExercisePiriority.dart';
import 'package:ihmtry/Screens/Exercices/ExercicesPiriority/StaticOne.dart';
import 'package:ihmtry/Screens/Exercices/ExercicesPlaques/ExercicesPlaques.dart';
import 'package:ihmtry/Screens/Exercices/ExerciseChosing.dart';
import 'package:ihmtry/Screens/LesInterdis.dart';
import 'package:ihmtry/Screens/LessonChosing.dart';
import 'package:ihmtry/Screens/HomePage.dart';
import 'package:ihmtry/Screens/Obligation.dart';
import 'package:ihmtry/Screens/Piriority.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auto Ecole',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewHome(),
      routes: {
        LessonsChoose.ToLessonsChoises: (context) => const LessonsChoose(),
        MyHomePage.HomePage: (context) => const NewHome(),
        InredisOne.InterdOne: (context) => const InredisOne(),
        InterdisTwo.InterdTwo: (context) => const InterdisTwo(),
        ObligationOne.obligatoinOne: (context) => const ObligationOne(),
        ObligationTwo.obligatoinTwo: (context) => const ObligationTwo(),
        DangerOne.Dangerone: (context) => const DangerOne(),
        DangerTwo.Dangertwo: (context) => const DangerTwo(),
        PiriorityOne.Piriorityone: (context) => const PiriorityOne(),
        PiriorityTwo.Pirioritytwo: (context) => const PiriorityTwo(),
        PiriorityThree.Pirioritythree: (context) => const PiriorityThree(),
        ExerciseChoose.Exercisechoose: (context) => const ExerciseChoose(),
        ExercicesPiriority.Exercicespiriority: (context) =>
            const ExercicesPiriority(),
        ExoPlaques.Exoplaques: (context) => ExoPlaques(),
        NewHome.newhome: (context) => NewHome(),
      },
    );
  }
}
