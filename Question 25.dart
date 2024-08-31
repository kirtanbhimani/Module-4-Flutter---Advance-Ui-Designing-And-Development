import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_app/Question%2005.dart';

class Question_25 extends StatefulWidget {
  const Question_25({super.key});

  @override
  State<Question_25> createState() => _Question_25State();
}

class _Question_25State extends State<Question_25> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Question_05()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade800,
      child: Center(child: Image.asset('assets/images/Gulab Jamun.jpg')),
    );
  }
}
