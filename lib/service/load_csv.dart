
//service/load_csv.dart

import 'package:flutter/services.dart';
import 'package:practice/model/quiz.dart';
import 'package:practice/service/Quiz.dart';

Future<List<Map>> getCsvData(String path) async {
  List<Map> quizList = [];
  String csv = await rootBundle.loadString(path);
  for (String line in csv.split("\n")) {
    if (quizList.length + 1 == csv.split("\n").length) {
      break;
    }
    List rows = line.split(',');
    QuizData quizData = QuizData(
      rows[0],
      rows[1],
    );
        quizList.add(quizData.toMap());
  }
  return quizList;
}

