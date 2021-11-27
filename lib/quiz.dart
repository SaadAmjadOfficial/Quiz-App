import 'dart:ui';

import 'quizbrain.dart';
import 'package:flutter/material.dart';

QuizBrain quizBrain = QuizBrain();

class Quizz extends StatefulWidget {
  const Quizz({Key? key}) : super(key: key);

  @override
  _QuizzState createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  List<Icon> scorekeeper = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              bool correct = quizBrain.getQuestionAns1();
                              if (scorekeeper.length <=
                                  quizBrain.totallength()) {
                                if (correct == true) {
                                  scorekeeper.add(const Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ));
                                  quizBrain.quesctr();
                                } else {
                                  scorekeeper.add(const Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ));
                                }
                                quizBrain.nextQuestion(context);
                              }
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                quizBrain.gettext1(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            print(quizBrain.totallength());
                            setState(() {
                              bool correct = quizBrain.getQuestionAns2();
                              if (scorekeeper.length <=
                                  quizBrain.totallength()) {
                                if (correct == true) {
                                  scorekeeper.add(const Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ));
                                  quizBrain.quesctr();
                                } else {
                                  scorekeeper.add(const Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ));
                                }
                                quizBrain.nextQuestion(context);
                              }
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                quizBrain.gettext2(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              bool correct = quizBrain.getQuestionAns3();
                              if (scorekeeper.length <=
                                  quizBrain.totallength()) {
                                if (correct == true) {
                                  scorekeeper.add(const Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ));
                                  quizBrain.quesctr();
                                } else {
                                  scorekeeper.add(const Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ));
                                }
                                quizBrain.nextQuestion(context);
                              }
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                quizBrain.gettext3(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              bool correct = quizBrain.getQuestionAns4();
                              if (scorekeeper.length <=
                                  quizBrain.totallength()) {
                                if (correct == true) {
                                  scorekeeper.add(const Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ));
                                  quizBrain.quesctr();
                                } else {
                                  scorekeeper.add(const Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ));
                                }
                                quizBrain.nextQuestion(context);
                              }
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                quizBrain.gettext4(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: scorekeeper,
            )
          ],
        ),
      ),
    );
  }
}
