import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Question_15 extends StatefulWidget {
  const Question_15({super.key});

  @override
  State<Question_15> createState() => _Question_15State();
}

class _Question_15State extends State<Question_15> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Question_15'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Question 15',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                Text('Write a code to display alert dialog with positive, negative and neutral button and display toast respectively users choice ',style: TextStyle(fontSize: 25),),
                SizedBox(height: 25,),
                ElevatedButton(
                  onPressed: () {
                    _showAlertDialog(context);
                  },
                  child: Text('Show Alert'),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose an Option'),
          content: Text('Please select one of the options below.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                _showToast('Neutral button pressed');
              },
              child: Text('Neutral'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                _showToast('Negative button pressed');
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                _showToast('Positive button pressed');
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
