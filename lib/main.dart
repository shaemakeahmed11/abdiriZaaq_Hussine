import 'package:flutter/material.dart';


import 'home.dart';

void main() {
  runApp(MaterialApp(
    
    debugShowCheckedModeBanner: false,
    theme:ThemeData(primaryColor: Colors.red, colorScheme: ColorScheme.fromSwatch().copyWith(secondary:const  Color(0xFFFEF9EB))),
     home:const HomePage()));
}
