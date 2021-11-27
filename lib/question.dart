class Question {
  late String questionText;
  late bool questionAns1;
  late bool questionAns2;
  late bool questionAns3;
  late bool questionAns4;
  late String op1;
  late String op2;
  late String op3;
  late String op4;

  Question(
      {required String q,
      required bool a,
      required bool b,
      required bool c,
      required bool d,
      required String o1,
      required String o2,
      required String o3,
      required String o4}) {
    questionText = q;
    questionAns1 = a;
    questionAns2 = b;
    questionAns3 = c;
    questionAns4 = d;
    op1 = o1;
    op2 = o2;
    op3 = o3;
    op4 = o4;
  }
}