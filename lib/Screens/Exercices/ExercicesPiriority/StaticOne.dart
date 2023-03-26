/*
import 'package:flutter/material.dart';
import 'package:ihmtry/Screens/Exercices/ExercicesPiriority/ExercisePiriority.dart';
import 'package:ihmtry/Screens/Exercices/ExerciseChosing.dart';

class StaticPiriotiry extends StatefulWidget {
  const StaticPiriotiry({Key? key}) : super(key: key);
  static String staticPitiority = 'staticPitiority';
  @override
  _StaticPiriotiryState createState() => _StaticPiriotiryState();
}

class _StaticPiriotiryState extends State<StaticPiriotiry> {
  bool isklicked = false;

  void btnClick() {
    //wseh yassra ki tataka button ki ykon s7i7 la coleur ta3o twali khedra
    // ki ykon ghalet la coleut ta3O twali rouge
    // lamatakash ywali gris
    // ya3ni kayen 2 wa7da est que tacka fih
    isklicked = true;
    if (isklicked) {
      if (answer = true) {
        green;
      } else {
        red;
      }
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          height: height * 0.15,
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Panneaux',
                  style: TextStyle(color: Colors.grey, fontSize: 28),
                ),
                Text(
                  'de Piriotité',
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
              ]),
        ),
        SizedBox(
          height: (5),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: height * 0.45,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/basicimages/quione.png"))),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    '1) A ,B ,C',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    "2) C ,B ,A",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    "3) B ,A ,C",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    "4) C ,A ,B",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /* IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),*/ // <-
            SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () {
                  //TODO : Set everysthing as default
                  Navigator.pushReplacementNamed(
                      context, ExerciseChoose.Exercisechoose);
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                )), // home
            Spacer(
              flex: 1,
            ),
            Text(
              '${imageIndex + 1}/3',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 45,
            ),
            Spacer(),
            istheEnd
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        print(PlistImagePath.length);
                        if (imageIndex + 1 < PlistImagePath.length)
                          imageIndex++;
                        istheEnd = true;
                      });
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ))
                : Container(),
          ],
        ),
        SizedBox(
          height: height * 0.01,
        ),
      ]),
    );
  }
}

const PlistImagePath = [
  'assets/basicimages/quione.png',
  'assets/basicimages/quitwo.png',
  'assets/basicimages/quithree.png'
];

List PlistAnswer = ['one', 'two', 'one'];

 */ /* */
