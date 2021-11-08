import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

void main() => runApp(Myapp());


class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Calculadora - Codigo Junio'),
    );
  }

}



