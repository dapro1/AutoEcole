import 'package:flutter/material.dart';
import 'package:ihmtry/Constants.dart';

class PageForm extends StatelessWidget {
  const PageForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: (BackgroundColor),
      body: Column(
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
          Spacer(),
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
    );
  }
}
