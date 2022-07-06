/*
import 'package:flutter/material.dart';

class AllApp extends StatelessWidget{
  AllApp({Key? key}) : super(key: key);
  late List<Map> quizList;

Future<void> goToQuizApp(BuildContext context) async {
  quizList = shuffle(await getCsvData('assets/1.csv'));
  for (Map row in quizList) {
    debugPrint(row["question"]);
  }

  Navigator.push(
      context, MaterialPageRoute(builder: (context) => QuizPage(quizList)));
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Columnの中身をを真ん中に揃えれる
          children: <Widget>[
            const Text(
                'クイズ'
            ),
            ElevatedButton(
                onPressed: (){
                  goToQuizApp(context);//クイズアプリへ遷移するQuizApp関数が呼ばれる
                },
                child: const Text('スタート')
            ),
          ],
        ),
      ),
    );
  }

}
*/