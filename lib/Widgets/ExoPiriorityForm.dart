import 'package:flutter/material.dart';

class ExoPiriorityForms extends StatefulWidget {
  const ExoPiriorityForms({
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
  State<ExoPiriorityForms> createState() => _ExoPiriorityFormsState();
}

class _ExoPiriorityFormsState extends State<ExoPiriorityForms> {
  bool isRight = false;
  bool FalseOne = false;
  bool FalseTwo = false;
  bool FalseThree = false;
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
                  widget.panneaux,
                  style: TextStyle(color: Colors.grey, fontSize: 28),
                ),
                Text(
                  widget.PanneauxDesc,
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
              image: DecorationImage(image: AssetImage(widget.imagePath))),
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
                    setState(() {
                      FalseOne = true;
                    });
                  },
                  child: Text(
                    "1) A ,B ,C",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: FalseOne
                        ? MaterialStateProperty.all(Colors.red)
                        : MaterialStateProperty.all(Colors.grey),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isRight = true;
                    });
                  },
                  child: Text(
                    "2) C ,B ,A",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: isRight
                        ? MaterialStateProperty.all(Colors.green)
                        : MaterialStateProperty.all(Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  FalseTwo = true;
                  isRight = true;
                });
              },
              child: Text(
                "3) B ,A ,C",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: FalseTwo
                    ? MaterialStateProperty.all(Colors.red)
                    : MaterialStateProperty.all(Colors.grey),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  FalseThree = true;
                  isRight = true;
                });
              },
              child: Text(
                "4) C ,A ,B",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: FalseThree
                    ? MaterialStateProperty.all(Colors.green)
                    : MaterialStateProperty.all(Colors.grey),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: widget.backToLesson,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )), // <-
            SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: widget.Home,
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                )), // home
            Spacer(
              flex: 1,
            ),
            Text(
              widget.pageNumber,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 45,
            ),
            Spacer(),
            Visibility(
                visible: widget.isNext,
                child: IconButton(
                    onPressed: widget.Next,
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )))
          ],
        ),
        SizedBox(
          height: height * 0.01,
        ),
      ]),
    );
  }
}
