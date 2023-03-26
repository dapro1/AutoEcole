import 'package:flutter/material.dart';
import 'package:ihmtry/Constants.dart';
import 'package:ihmtry/Screens/Exercices/ExercicesPiriority/ExercisePiriority.dart';
import 'package:ihmtry/Screens/Exercices/ExercicesPiriority/StaticOne.dart';
import 'package:ihmtry/Screens/Exercices/ExercicesPlaques/ExercicesPlaques.dart';
import 'package:ihmtry/Screens/HomePage.dart';

class ExerciseChoose extends StatelessWidget {
  const ExerciseChoose({Key? key}) : super(key: key);
  static String Exercisechoose = 'Exercisechoose';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: Stack(
        children: [
          Container(
            height: height * 0.06,
            width: width,
            color: DarkGreen,
            child: Row(
              children: [
                Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: LightBrown,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(30)),
                    )),
              ],
            ),
          ),
          Positioned(
            top: height * 0.25,
            left: width * 0.1,
            child: Text(
              "Faut pratiquer \npour \napprendre",
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              top: height * 0.25,
              right: width * 0.1,
              left: width * 0.5,
              bottom: height * 0.25,
              child: Row(
                children: [
                  Container(
                    width: width * 0.15,
                    height: height * 0.4,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/exopicone.jpg"),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high)),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: width * 0.15,
                    height: height * 0.4,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/exopictwo.jpg"),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high)),
                  ),
                ],
              )),
          Positioned(
            top: height * 0.55,
            left: width * 0.1,
            child: Container(
              width: width * 0.2,
              height: height * 0.06,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ExoPlaques.Exoplaques);
                },
                child: Text(
                  "Les Plaques ",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(ButtonColor)),
              ),
            ),
          ),
          Positioned(
            left: width * 0.1,
            top: height * 0.65,
            child: Container(
              width: width * 0.2,
              height: height * 0.06,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, ExercicesPiriority.Exercicespiriority);
                },
                child: Text(
                  "règles piriorité",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(ButtonColor)),
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.08,
            right: width * 0.03,
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                height: 35,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyHomePage.HomePage);
                  },
                  child: Text(
                    'Prècédant',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(ButtonColor),
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Expanded(child: Container()),
            ],
          ),
          Positioned(
            top: height * 0.95,
            child: Container(
              height: height * 0.05,
              width: width,
              color: DarkGreen,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      width: 120,
                      decoration: BoxDecoration(
                        color: LightBrown,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(30)),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
