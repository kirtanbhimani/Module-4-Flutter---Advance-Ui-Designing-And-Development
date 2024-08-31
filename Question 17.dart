import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Question_17 extends StatefulWidget {
  const Question_17({super.key});

  @override
  State<Question_17> createState() => _Question_17State();
}

class _Question_17State extends State<Question_17> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: ExitConfirmationPage(),
    );
  }
}

class ExitConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Show alert dialog when back button is pressed
        return await _showExitConfirmationDialog(context) ?? false;
      },
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Question_17'),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text('Question 17',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                Text('Open alert dialog when user want to exit from the application',style: TextStyle(fontSize: 25),),
                SizedBox(height: 25,),
                Text(
                  'Press back to see the exit confirmation dialog.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool?> _showExitConfirmationDialog(BuildContext context) {
    return showCupertinoDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Confirm Exit'),
          content: Text('Are you sure you want to exit the application?'),
          actions: <Widget>[
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop(true); // Exit the app
              },
              child: Text('Exit'),
            ),
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop(false); // Stay in the app
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
