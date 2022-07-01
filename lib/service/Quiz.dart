import 'package:flutter/cupertino.dart';

class QuizData {
  late String id;
  late String title;

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