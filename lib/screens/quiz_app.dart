// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../main.dart';
import 'question_brain.dart';

enum C {
  kan_1,
  kan_2,
}

class QuizApp extends StatefulWidget {
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  C? myColor;
  void cheackQueston(bool check) {
    if (qestion_brain.nextQuestion() != true) {
      setState(() {
        qestion_brain.restart();
        myIcon = [];
        // Alert(
        //         style: AlertStyle(
        //           backgroundColor: Colors.red,
        //         ),
        //         context: (context)=>HomeScreen(),
        //         title: "muhiim",
        //         desc: "waxaan gaarnay kii ugu danbeeyay"),
        //     .show();

        Alert(
          style: AlertStyle(
              isCloseButton: false,
              descStyle: TextStyle(color: Colors.green),
              titleStyle: const TextStyle(color: Colors.white)),
          context: context,
          type: AlertType.error,
          title: "Quiz App",
          desc: "waa inaa din ulabataa",
          buttons: [
            DialogButton(
              onPressed: () => Navigator.pop(context),
              color: Colors.green,
              height: 40,
              child: Text(
                "COOL",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              width: 120,
            ),
          ],
        ).show();
      });
    } else {
      setState(() {
        bool? correctAnswer = qestion_brain.answer();
        if (correctAnswer == check) {
          myIcon.add(Icon(
            Icons.check_outlined,
            color: Colors.green,
          ));
        } else {
          myIcon.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
      });
    }
  }

  Qestion_Brain qestion_brain = Qestion_Brain();
  List<Icon> myIcon = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    qestion_brain.questionText(),
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                child: RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: myColor == C.kan_1 ? Colors.green : Colors.grey,
                  onPressed: () {
                    setState(() {
                      cheackQueston(true);
                      myColor = C.kan_1;
                    });
                  },
                  child: Center(
                      child: Text(
                    'True',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  )),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                child: RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: myColor == C.kan_2 ? Colors.red : Colors.grey,
                  onPressed: () {
                    setState(() {
                      myColor = C.kan_2;
                      cheackQueston(false);
                    });
                  },
                  child: Center(
                      child: Text(
                    'False',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: myIcon,
              ),
            )
          ],
        ),
      ),
    );
  }
}
