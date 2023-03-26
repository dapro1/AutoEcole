import 'package:flutter/material.dart';
import 'package:ihmtry/Constants.dart';

class StandardPanneauxs extends StatelessWidget {
  const StandardPanneauxs({
    Key? key,
    required this.height,
    required this.panneaux,
    required this.PanneauxDesc,
    required this.imagePath,
    required this.backToLesson,
    required this.Home,
    required this.pageNumber,
    required this.isNext,
    required this.Next,
  }) : super(key: key);

  final double height;
  final String panneaux;
  final String PanneauxDesc;
  final String imagePath;
  final Function() backToLesson;
  final Function() Home;
  final String pageNumber;
  final bool isNext;
  final Function() Next;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          height: height * 0.05,
          width: double.infinity,
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
          height: height * 0.15,
          width: double.infinity,
          margin: EdgeInsets.only(left: height * 0.1),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  panneaux,
                  style: TextStyle(color: Colors.grey, fontSize: 28),
                ),
                Text(
                  "        " + PanneauxDesc,
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
          height: height * 0.6,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imagePath))),
        ),
        SizedBox(
          height: height * 0.08,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: backToLesson,
                child: Text(
                  'Prècédent',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(ButtonColor)),
              ), // <-
              SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: Home,
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(ButtonColor)),
              ),
              // home
              Spacer(
                flex: 1,
              ),
              Text(
                pageNumber,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 45,
              ),
              Spacer(),
              Visibility(
                  visible: isNext,
                  child: TextButton(
                    onPressed: Next,
                    child: Text(
                      "Suivant",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(ButtonColor)),
                  ))
            ],
          ),
        ),
        Expanded(child: Container()),
        Container(
          height: height * 0.05,
          width: double.infinity,
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
