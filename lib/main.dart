import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/view/quiz_menu.dart';
import 'view/First_Page.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const MyApp());
}
//MyAppを立ち上げて、FirstPageに飛ばす
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(

        home:FirstPage()
    );
  }
}
