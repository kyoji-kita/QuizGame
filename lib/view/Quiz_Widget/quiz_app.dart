import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/view/Quiz_Widget/quiz_page.dart';
import 'package:practice/view/Quiz_Widget/result_page.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({
    Key? key,
    required this.id,
    required this.title,
  }) :super (key: key);

  final String id;
  final String title;

  Future<List> loadQuiz(String id)async{
    //idに紐づいたクイズを取得する
    await Future.delayed(const Duration(seconds: 1));
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: FutureBuilder<List>(
          future: loadQuiz(id),
          builder: (context, snapshot) {
            //クイズ表示
            return ListView();
          }
      ),

    );
  }
}