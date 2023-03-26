import 'package:flutter/animation.dart';

const BackgroundColor = Color(0xFFF7F3EB);
const DarkGreen = Color(0xFF064B40);
const LightBrown = Color(0xFF974900);
const ButtonColor = Color(0xFF2D7469);
const SecondButtonColor = Color(0xFFCC9544);

/*
class StandardPanneaux extends StatelessWidget {
  const StandardPanneaux(
      {Key? key,
      required this.height,
      required this.panneaux,
      required this.PanneauxDesc,
      required this.imagePath,
      required this.pageNumber,
      required this.Home,
      required this.backToLesson,
      required this.Next,
      required this.isNext})
      : super(key: key);

  final double height;
  final String panneaux;
  final String PanneauxDesc;
  final String imagePath;
  final String pageNumber;
  final Function Home;
  final Function backToLesson;
  final Function Next;
  final bool isNext;
  @override
  Widget build(BuildContext context) {
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
                  panneaux,
                  style: TextStyle(color: Colors.grey, fontSize: 28),
                ),
                Text(
                  PanneauxDesc,
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
          height: height * 0.7,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imagePath))),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: backToLesson(), icon: Icon(Icons.arrow_back,color: Colors.black,)), // <-
            SizedBox(
              width: 10,
            ),
            IconButton(onPressed: Home(), icon: Icon(Icons.home,color: Colors.black,)), // home
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
                child: IconButton(
                    onPressed: Next(), icon: Icon(Icons.arrow_forward ,color: Colors.black,)))
          ],
        ),
        SizedBox(
          height: height * 0.01,
        ),
      ]),
    );
  }
}

 */
