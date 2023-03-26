import 'package:flutter/material.dart';
import 'package:ihmtry/Constants.dart';
import 'package:ihmtry/Screens/Exercices/ExerciseChosing.dart';
import 'package:ihmtry/Screens/LessonChosing.dart';

class NewHome extends StatelessWidget {
  const NewHome({Key? key}) : super(key: key);
  static String newhome = 'newhome';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: BackgroundColor,
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            color: BackgroundColor,
          ),
          Container(
            width: width * 0.5,
            height: height,
            color: ButtonColor,
          ),
          Positioned(
            top: height * 0.65,
            left: width * 0.10,
            child: Container(
              width: width * 0.3,
              height: height * 0.07,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, LessonsChoose.ToLessonsChoises);
                },
                child: Text(
                  'Lessons',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(SecondButtonColor)),
              ),
            ),
          ),
          Positioned(
            top: height * 0.5,
            right: width * 0.05,
            child: Container(
              width: width * 0.38,
              height: height * 0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
                image: AssetImage('assets/basicimages/background.jpg'),
              )),
            ),
          ),
          Positioned(
            left: width * 0.6,
            top: height * 0.2,
            child: Container(
              height: height * 0.07,
              width: width * 0.3,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ExerciseChoose.Exercisechoose);
                },
                child: Center(
                  child: Text(
                    'Exercices',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(ButtonColor)),
              ),
            ),
          ),
          Positioned(
            left: width * 0.05,
            top: height * 0.1,
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              width: width * 0.4,
              height: height * 0.3,
              color: SecondButtonColor,
              child: Text(
                  'Apprendre a conduire \n'
                  'pas a pas',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600)),
            ),
          ),
        ],
      ),
    );
  }
}
