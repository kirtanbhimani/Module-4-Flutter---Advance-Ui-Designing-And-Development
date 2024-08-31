import 'package:flutter/material.dart';
import 'package:new_app/Design%2001.dart';
import 'package:new_app/Design%2002.dart';
import 'package:new_app/Design%2003.dart';
import 'package:new_app/Gallary.dart';
import 'package:new_app/Music.dart';
import 'package:new_app/Question%2001(II).dart';
import 'package:new_app/Question%2002.dart';
import 'package:new_app/Question%2003.dart';
import 'package:new_app/Question%2004.dart';
import 'package:new_app/Question%2005.dart';
import 'package:new_app/Question%2006.dart';
import 'package:new_app/Question%2007.dart';
import 'package:new_app/Question%2008.dart';
import 'package:new_app/Question%2009.dart';
import 'package:new_app/Question%2011.dart';
import 'package:new_app/Question%2012%20(I).dart';
import 'package:new_app/Question%2012%20(II).dart';
import 'package:new_app/Question%2013.dart';
import 'package:new_app/Question%2014.dart';
import 'package:new_app/Question%2015.dart';
import 'package:new_app/Question%2016.dart';
import 'package:new_app/Question%2017.dart';
import 'package:new_app/Question%2018.dart';
import 'package:new_app/Question%2019.dart';
import 'package:new_app/Question%2020.dart';
import 'package:new_app/Question%2021.dart';
import 'package:new_app/Question%2022.dart';
import 'package:new_app/Question%2023.dart';
import 'package:new_app/Question%2024.dart';
import 'package:new_app/Question%2025.dart';
import 'package:new_app/Question%2026.dart';
import 'package:new_app/Question%2027.dart';
import 'package:new_app/Question%2028.dart';
import 'package:new_app/Question%2030.dart';
import 'package:new_app/Videos.dart';


import 'Question 01(I).dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Design_03(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
