import 'package:flutter/material.dart';

class Question_14 extends StatefulWidget {
  const Question_14({super.key});

  @override
  State<Question_14> createState() => _Question_14State();
}

class _Question_14State extends State<Question_14> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Question 14'),
            backgroundColor: Colors.grey,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Question 14',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 25,),
                  Text('Write a code to display simple alert dialog with title, description and icon when button is clicked',style: TextStyle(fontSize: 25),),
                  SizedBox(height: 25,),
                  ElevatedButton(
                    onPressed: () {
                      _showAlertDialog(context);
                    },
                    child: Text('Show Alert'),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Title'),
          content: Row(
            children: <Widget>[
              Icon(Icons.info_outline, size: 40, color: Colors.blue),
              SizedBox(width: 10),
              Expanded(
                child: Text('This is the description of the alert dialog.'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
