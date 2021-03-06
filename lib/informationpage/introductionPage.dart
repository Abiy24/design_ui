import 'package:design_ui/informationpage/introductioncontent/Intro4.dart';
import 'package:design_ui/widget/content.dart';
import 'package:flutter/material.dart';

import 'introductioncontent/Intro1.dart';
import 'introductioncontent/Intro2.dart';
import 'introductioncontent/Intro3.dart';
import 'introductioncontent/Intro5.dart';
import 'introductioncontent/Intro6.dart';

class IntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Introduction",
                          style: TextStyle(
                            //backgroundColor: Colors.blue,
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "7 Course",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "You will learn about UI, the purpose UI \nDesign, how to design, etc.",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Course Content',
              style: TextStyle(
                  fontSize: 15, height: 1.3, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Content(
                          number: "01",
                          contenttitle: "What is UI?",
                          time: "05:00",
                          contentpage: Intro1(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Content(
                          number: "02",
                          contenttitle: "The purpose of UI",
                          time: "03:30",
                          contentpage: Intro2(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Content(
                          number: "03",
                          contenttitle: "How to design?",
                          time: "07:29",
                          contentpage: Intro3(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Content(
                          number: "04",
                          contenttitle: "What is the guide?",
                          time: "09:05",
                          contentpage: Intro4(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Content(
                          number: "05",
                          contenttitle: "What is prototyping?",
                          time: "05:15",
                          contentpage: Intro5(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Content(
                          number: "06",
                          contenttitle:
                              "What is the app usually use for UI Design?",
                          time: "05:00",
                          contentpage: Intro6(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
