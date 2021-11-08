import 'package:flutter/material.dart';

void main()
{

  print('antes gettin i');
  var i = getInt();



  print('despues de $i');






}

Future <int> getInt() async
{
  
  print('Devolviendo i');
  return 0;
}