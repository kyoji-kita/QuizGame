import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/view/Quiz_Widget/quiz_page.dart';
import 'package:practice/view/Quiz_Widget/result_page.dart';

import '../../service/load_csv.dart';

//QuizMenuで指定されたid,titleを受け取っている
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

  //受け取ったidのcsvの問題を表示
  Future<void> goToQuizPage(BuildContext context)async{
    final quizList = await getCsvList('assets/$id.csv');
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => QuizPage(quizList: quizList)));
  }

  //QuizAppの画面　スタートボタンのみ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      ElevatedButton(
      onPressed: (){
      goToQuizPage(context);//クイズアプリへ遷移するQuizApp関数が呼ばれる
      },
      child: const Text('スタート')
      ),
      ],
      ),
      ),
    );
  }
}
