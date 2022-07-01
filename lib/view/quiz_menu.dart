

import 'package:flutter/material.dart';
import 'package:practice/view/Quiz_Widget/quiz_app.dart';

import '../service/load_csv.dart';

class QuizMenu extends StatelessWidget{
  const QuizMenu({Key? key}):super(key:key);
  Future<List<Map>>loadQuiz() async{
    //適当に時間かかる処理のため処理時間をもうけた
    //await getCsvData('assets/QuizList.csv');
    /*var csvdata = await getCsvData('assets/QuizList.csv');
    print(csvdata);*/
    await Future.delayed(const Duration(seconds: 1));
    return getCsvData('assets/QuizList.csv');
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Menu'),
      ),
      body: FutureBuilder<List<Map>>(
          future: loadQuiz(),
          builder: (context , snapshot) {
            List<Widget>children=[];
            if (snapshot.hasData){
              snapshot.data?.forEach((element) {
                children.add(_quizMenu('id', 'title', context));
              });
            }
            return ListView(
              children: children,
            );
          }),
    );
  }
}


Future<void> goToQuizMenu(
    String id,
    String title,
    BuildContext context,
    )async{
  Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => QuizApp(
            id: id,
            title: title,
          )
      )
  );
}

Widget _quizMenu(String id, String title, BuildContext context){
  return GestureDetector(
    child:Container(
        padding: EdgeInsets.all(8.0),
        decoration: new BoxDecoration(
            border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
        ),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
            ),
            Text(
              title,
              style: TextStyle(
                  color:Colors.black,
                  fontSize: 18.0
              ),
            ),
          ],
        )
    ),
    onTap: (){
      goToQuizMenu(id, title, context);
    },
  );
}