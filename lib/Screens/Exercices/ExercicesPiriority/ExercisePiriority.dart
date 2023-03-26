import 'package:flutter/material.dart';
import 'package:ihmtry/Constants.dart';
import 'package:ihmtry/Screens/Exercices/ExercicesPiriority/answerCon.dart';
import 'package:ihmtry/Screens/Exercices/ExerciseChosing.dart';
import 'package:ihmtry/Screens/HomePage.dart';
import 'package:ihmtry/Utility/Model.dart';
import 'package:ihmtry/Widgets/ExoPiriorityForm.dart';

class ExercicesPiriority extends StatefulWidget {
  const ExercicesPiriority({Key? key}) : super(key: key);
  static String Exercicespiriority = "Exercicespiriority";
  @override
  _ExercicesPiriorityState createState() => _ExercicesPiriorityState();
}

class _ExercicesPiriorityState extends State<ExercicesPiriority> {
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
      if (_questionIndex + 1 == pirioritylist.length) {
        endofQuiz = true;
      }
    });
  }

  void _nextQuestion() {}

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
      body: Column(children: [
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
        Container(
          height: height * 0.1,
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Choisissiez la bonne réponse',
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
              ]),
        ),
        Container(
          width: height * 0.4,
          height: height * 0.4,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(pirioritylist[_questionIndex]['picturePath']
                      .toString()))),
        ),
        ...(pirioritylist[_questionIndex]['answers']
                as List<Map<String, Object>>)
            .map((answer) => AnswerContain(
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
        (pirioritylist[_questionIndex]['answers'] as List).length > 2
            ? SizedBox(
                height: height * 0.05,
              )
            : SizedBox(
                height: height * 0.2,
              ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 10,
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
              width: 0.1,
            ),

            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(ButtonColor)),
                onPressed: () {
                  prevent(false);
                },
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                )), // home
            Spacer(
              flex: 1,
            ),
            Text(
              '${_questionIndex + 1}/3',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 45,
            ),
            Spacer(),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(ButtonColor)),
                onPressed: () {
                  if (!answerwasSelected) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Center(child: Text('Selectionez une réponse !'))));
                    return;
                  }
                  setState(() {
                    _questionIndex = _questionIndex + 1;
                    print(_questionIndex);
                    answerwasSelected = false;
                  });
                  if (_questionIndex <= pirioritylist.length) {
                    _resetQuiz();
                  }
                },
                child: endofQuiz
                    ? Text('Répeter', style: TextStyle(color: Colors.white))
                    : Text(
                        'Suivant',
                        style: TextStyle(color: Colors.white),
                      )),
          ],
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
      ]),
    );
  }
}

final pirioritylist = [
  {
    'picturePath': 'assets/basicimages/quione.png',
    'answers': [
      {'answerText': 'C et B et A', 'score': true},
      {'answerText': 'B et A et C', 'score': false},
      {'answerText': 'A et B et C', 'score': false},
      {'answerText': 'C et A et B', 'score': false},
    ]
  },
  {
    'picturePath': 'assets/basicimages/quitwo.png',
    'answers': [
      {'answerText': 'B après A', 'score': false},
      {'answerText': 'A après B', 'score': true},
    ]
  },
  {
    'picturePath': 'assets/basicimages/quithree.png',
    'answers': [
      {'answerText': 'B après A', 'score': false},
      {'answerText': 'A après B', 'score': true},
    ]
  }
];
