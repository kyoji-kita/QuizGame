import 'package:flutter/cupertino.dart';

class QuizData {
   String id;
  String title;

  Map<String, dynamic> toMap() {
    return {
      'question': id,
      'answer': title,
    };
  }

  QuizData(
      this.id,
      this.title,
      );
}