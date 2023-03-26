import 'package:flutter/material.dart';
import 'package:ihmtry/Screens/Exercices/ExercicesPiriority/ExercisePiriority.dart';
import 'package:ihmtry/Screens/Exercices/ExerciseChosing.dart';
import 'package:ihmtry/Screens/LessonChosing.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static String HomePage = "HomePage";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: Text(
                "Auto Ecole",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: hight * 0.03,
            ),
            Text(
                'Apprendre a conduire \n '
                'pas a pas',
                style: TextStyle(color: Colors.white, fontSize: 24)),
            Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: width * 0.2,
                  height: hight * 0.06,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, LessonsChoose.ToLessonsChoises);
                    },
                    child: Text(
                      'Lessons',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: hight * 0.06,
                  width: width * 0.2,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, ExerciseChoose.Exercisechoose);
                    },
                    child: Text(
                      'Exercices',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/basicimages/background.jpg"),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
