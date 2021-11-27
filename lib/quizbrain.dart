import 'package:flutter/cupertino.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'question.dart';

class QuizBrain {
  int _num = 0;
  int _ctr = 0;
  int tot = 0;

  final List<Question> _questionbank = [
    Question(
        q: "Question no 1",
        a: true,
        b: false,
        c: false,
        d: false,
        o1: "1",
        o2: "2",
        o3: "3",
        o4: "4"),
    Question(
        q: "Question no 2",
        a: false,
        b: true,
        c: false,
        d: false,
        o1: "1",
        o2: "2",
        o3: "3",
        o4: "4"),
    Question(
        q: "Question no 3",
        a: false,
        b: false,
        c: true,
        d: false,
        o1: "1",
        o2: "2",
        o3: "3",
        o4: "4"),
  ];
   totallength() {
    return _questionbank.length-1;
  }

  void nextQuestion(context) {
    if (_num == _questionbank.length -1) {
      tot = _questionbank.length;
      _onAlertButtonPressed(context);
    } else {
      print(_num);
      _num++;
    }
  }

  void quesctr() {
    _ctr++;
  }

  String getQuestionText() {
    return _questionbank[_num].questionText;
  }

  bool getQuestionAns1() {
    return _questionbank[_num].questionAns1;
  }

  bool getQuestionAns2() {
    return _questionbank[_num].questionAns2;
  }

  bool getQuestionAns3() {
    return _questionbank[_num].questionAns3;
  }

  bool getQuestionAns4() {
    return _questionbank[_num].questionAns4;
  }

  String gettext1() {
    return _questionbank[_num].op1;
  }

  String gettext2() {
    return _questionbank[_num].op2;
  }

  String gettext3() {
    return _questionbank[_num].op3;
  }

  String gettext4() {
    return _questionbank[_num].op4;
  }

  // Alert with single button.
  _onAlertButtonPressed(context) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "$_ctr/$tot",
      desc: "You got",
      buttons: [
        DialogButton(
          child: Text("Ok"),
          onPressed: () {},
          width: 120,
        )
      ],
    ).show();
  }
}
