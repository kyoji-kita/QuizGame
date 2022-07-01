import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/view/quiz_menu.dart';


class FirstPage extends StatelessWidget{
  FirstPage({Key? key}) : super(key: key);

 Future<void> goToFirstPage(BuildContext context)async{
   Navigator.push(
       context, MaterialPageRoute(builder: (context) => QuizMenu()));
 }



  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                'Quiz Game!',
              style: TextStyle(
                fontFamily: "Pacifico",
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  goToFirstPage(context);//クイズアプリへ遷移するQuizApp関数が呼ばれる
                },
                child: const Text('スタート')
            ),
          ],
      ),
      ),
    );
  }
}

