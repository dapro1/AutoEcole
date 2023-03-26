import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ihmtry/Constants.dart';
import 'package:ihmtry/Screens/Dangers.dart';
import 'package:ihmtry/Screens/HomePage.dart';
import 'package:ihmtry/Screens/LesInterdis.dart';
import 'package:ihmtry/Screens/Obligation.dart';
import 'package:ihmtry/Screens/Piriority.dart';

class LessonsChoose extends StatelessWidget {
  const LessonsChoose({Key? key}) : super(key: key);
  static String ToLessonsChoises = "ToExercisesChoises";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: height * 0.05,
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
            SizedBox(height: height * 0.13),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImagePanneau(
                  height: height,
                  width: width,
                  title: "Panneau \n de Danger",
                  address: "assets/DangerBack.jpg",
                  onTap: () {
                    Navigator.pushNamed(context, DangerOne.Dangerone);
                  },
                ),
                ImagePanneau(
                  height: height,
                  width: width,
                  title: "Panneau \n d'interdit'",
                  address: "assets/InterdBack.jpg",
                  onTap: () {
                    Navigator.pushNamed(context, InredisOne.InterdOne);
                  },
                ),
                ImagePanneau(
                  height: height,
                  width: width,
                  title: "Panneau \n d'obliagation'",
                  address: "assets/ObligationBack.jpg",
                  onTap: () {
                    Navigator.pushNamed(context, ObligationOne.obligatoinOne);
                  },
                ),
                ImagePanneau(
                  height: height,
                  width: width,
                  title: "Panneau \n de Piriority",
                  address: "assets/PiriorityBack.jpg",
                  onTap: () {
                    Navigator.pushNamed(context, PiriorityOne.Piriorityone);
                  },
                ),
              ],
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
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
            ),
            Container(
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
          ],
        ),
      ]),
    );
  }
}

class ImagePanneau extends StatelessWidget {
  const ImagePanneau({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.address,
    required this.onTap,
  });

  final double height;
  final double width;
  final String title;
  final String address;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * 0.60,
        width: width * 0.18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            image:
                DecorationImage(image: AssetImage(address), fit: BoxFit.fill)),
        child: Stack(children: [
          Positioned(
            child: Text(
              title,
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            bottom: 20,
            left: 2,
          )
        ]),
      ),
    );
  }
}
