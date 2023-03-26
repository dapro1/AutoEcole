import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ihmtry/Constants.dart';

import 'package:ihmtry/Screens/Exercices/ExerciseChosing.dart';
import 'package:ihmtry/Screens/HomePage.dart';
import 'package:ihmtry/Utility/Answerbox.dart';
import 'package:ihmtry/Utility/Model.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ExoPlaques extends StatefulWidget {
  const ExoPlaques({Key? key}) : super(key: key);
  static String Exoplaques = "Exoplaques";
  @override
  _ExoPlaquesState createState() => _ExoPlaquesState();
}

class _ExoPlaquesState extends State<ExoPlaques> {
  int _questionIndex = 0;
  int _totalscore = 0;
  bool answerwasSelected = false;
  bool endofQuiz = false;

  void _answerisSelected(bool isScore) {
    //answer is selected
    setState(() {
      answerwasSelected = true;
      if (isScore) {
        _totalscore++;
      }
      if (_questionIndex + 1 == questionPlaque.length) {
        endofQuiz = true;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex++;
      answerwasSelected = false;
      print(_questionIndex);
      print(questionPlaque.length);
    });
    if (answerwasSelected == true && endofQuiz) {
      findexercice();
    }
    if (_questionIndex >= questionPlaque.length) {
      _resetQuiz();
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
      endofQuiz = false;
    });
  }

  void gohome() {
    //We should show a dialog and say are you sure ? you wanna quit ?
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
      endofQuiz = false;
    });
    Navigator.pushNamed(context, MyHomePage.HomePage);
  }

  void goback() {
    //We should show a dialog and say are you sure ? you wanna quit ?
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
      endofQuiz = false;
    });
    Navigator.pushNamed(context, ExerciseChoose.Exercisechoose);
  }

  void prevent(bool back) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              icon: Icon(
                Icons.error,
                color: Colors.yellow,
              ),
              title: Text('Preventation'),
              content: Text('est que tu es sur de sortir ?'),
              actions: [
                TextButton(
                  onPressed: () {
                    back ? goback() : gohome();
                  },
                  child: Text(
                    'Oui',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent)),
                ),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'No',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(ButtonColor)),
                ),
              ],
            ));
  }

  void findexercice() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('La Fin !'),
              content:
                  Text('Ton Score est $_totalscore/${questionPlaque.length}'),
              actions: [
                TextButton(
                  onPressed: () {
                    _resetQuiz();
                  },
                  child: Text(
                    'Repéter',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(ButtonColor)),
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    goback();
                  },
                  child: Text(
                    'Changer Exercices',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(ButtonColor)),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(
              height: height * 0.05,
            ),
            Center(
              child: Text(
                'Choisi la bonne réponse ',
                style: TextStyle(fontSize: 26),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              width: width * 0.25,
              height: height * 0.010,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 0.005),
                  color: DarkGreen),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Image.asset(
              questionPlaque[_questionIndex]['PicturePath'].toString(),
              width: width * 0.16,
              height: width * 0.16,
            ),
            SizedBox(
              height: height * 0.015,
            ),

            ...(questionPlaque[_questionIndex]['answer']
                    as List<Map<String, Object>>)
                .map((answer) => AnswerBox(
                    answerTap: () {
                      if (answerwasSelected) {
                        return;
                      }
                      _answerisSelected(answer['score'] as bool);
                    },
                    height: height,
                    answerColor: answerwasSelected
                        ? answer['score'] as bool
                            ? Colors.green
                            : Colors.grey
                        : Colors.black12,
                    answerText: answer['answerText'].toString())),
            SizedBox(
              height: height * 0.03,
            ),
            //i think we should make a button of next here and alse a button
            //of going home and we lock it
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.01,
                ),
                TextButton(
                  onPressed: () {
                    prevent(true);
                  },
                  child: Text(
                    'Prècédant',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(ButtonColor)),
                ),
                SizedBox(
                  width: 0.03,
                ),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(ButtonColor)),
                    onPressed: () {
                      prevent(false);
                    },
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    )),
                Spacer(),
                Text(
                    'Score : ${_totalscore.toString()}/${questionPlaque.length}'),
                SizedBox(width: width * 0.06),
                LinearPercentIndicator(
                  barRadius: Radius.circular(10),
                  width: 230.0,
                  lineHeight: 8.0,
                  percent: _totalscore / 10,
                  progressColor: Colors.orange,
                ),
                SizedBox(
                  width: 20,
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    if (!answerwasSelected) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Center(
                              child: Text('Selectionez une réponse !'))));
                      return;
                    }
                    _nextQuestion();
                  },
                  child: endofQuiz
                      ? Text(
                          'Répéter',
                          style: TextStyle(color: Colors.white),
                        )
                      : Text(
                          'Suivant',
                          style: TextStyle(color: Colors.white),
                        ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(ButtonColor)),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Expanded(child: Container()),
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
        ));
  }
}
