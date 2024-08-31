import 'package:flutter/material.dart';
import 'Gallary.dart';
import 'Music.dart';
import 'Videos.dart';

class Question_22 extends StatefulWidget {
  const Question_22({super.key});

  @override
  State<Question_22> createState() => _Question_22State();
}

class _Question_22State extends State<Question_22> {
  int myIndex = 0;
  List<Widget> myWidget = const[
    Gallary(),
    Music(),
    Videos()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Question 22'),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Question 22',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                Text('Create an application with bottom navigation with 3 tabs Gallery, audio and video and design each page with dummy data ',style: TextStyle(fontSize: 25),),
                SizedBox(height: 25,),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey.shade700,
            selectedItemColor: Colors.white,
            showUnselectedLabels: false,
            onTap: (value) {
              setState(() {
                myIndex = value;
              });
            },
            currentIndex: myIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.photo,
                    color: Colors.orange,
                  ),
                  label: 'Gallary'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                  ),
                  label: 'Music'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.video_call_outlined,
                    color: Colors.blue,
                  ),
                  label: 'Videos'),
            ]),
      ),
    );
  }
}
