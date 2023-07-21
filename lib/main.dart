import 'package:flutter/material.dart';
import 'package:task1/register.dart';

import 'mainpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'mainpage',
    routes: {
      'mainpage': (context) => MainPage(),
      'register': (context) => Register(),
    },
  ));
}
