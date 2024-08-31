import 'package:flutter/material.dart';

class Question_24 extends StatefulWidget {
  const Question_24({super.key});

  @override
  State<Question_24> createState() => _Question_24State();
}

class _Question_24State extends State<Question_24> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 24',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }

  Future<void> _checkPermissions() async {
    var Permission;
    final status = await Permission.phone.status;

    if (status.isDenied) {
      _showPermissionDialog();
    }
  }

  void _showPermissionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Permission Required'),
          content: Text('This app needs permission to make phone calls.'),
          actions: <Widget>[
            TextButton(
              child: Text('Deny'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Allow'),
              onPressed: () async {
                Navigator.of(context).pop();
                var Permission;
                await Permission.phone.request();
                _checkPermissions(); // Recheck permission after request
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Call App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _makePhoneCall,
          child: Text('Make a Phone Call'),
        ),
      ),
    );
  }

  Future<void> _makePhoneCall() async {
    var Permission;
    final status = await Permission.phone.status;
    if (status.isGranted) {
      // Make phone call logic
      print('Phone call logic goes here.');
    } else {
      // Show message that permission is not granted
      print('Permission not granted.');
    }
  }
}