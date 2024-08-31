import 'package:flutter/material.dart';

class Question_18 extends StatefulWidget {
  const Question_18({super.key});

  @override
  State<Question_18> createState() => _Question_18State();
}

class _Question_18State extends State<Question_18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question_18'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Question 18',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 25,),
              Text('Write a code to select Date on buttons click event ',style: TextStyle(fontSize: 25),),
              SizedBox(height: 25,),
              Text("Select Date",style: TextStyle(fontSize: 25),),
              SizedBox(height: 25,),
              ElevatedButton(onPressed: ()async{
                DateTime? dateTime = await showDatePicker(
                    context: context,
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2026));
                print('Date : ${dateTime?.day} / ${dateTime?.month} / ${dateTime?.year}');
              },
              child : Text('Select Date')),
            ],
          ),
        ),
      ),
    );
  }
}
