import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Question_27 extends StatefulWidget {
  const Question_27({super.key});

  @override
  State<Question_27> createState() => _Question_27State();
}

class _Question_27State extends State<Question_27> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lifecycle Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LifecycleDemoPage(),
    );
  }
}

class LifecycleDemoPage extends StatefulWidget {
  @override
  _LifecycleDemoPageState createState() => _LifecycleDemoPageState();
}

class _LifecycleDemoPageState extends State<LifecycleDemoPage> {
  @override
  void initState() {
    super.initState();
    _showToast('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _showToast('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant LifecycleDemoPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _showToast('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    _showToast('deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    _showToast('dispose');
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lifecycle Management'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NextPage()),
            );
          },
          child: Text('Go to Next Page'),
        ),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  void initState() {
    super.initState();
    _showToast('NextPage initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _showToast('NextPage didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant NextPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _showToast('NextPage didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    _showToast('NextPage deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    _showToast('NextPage dispose');
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back to Previous Page'),
        ),
      ),
    );
  }
}
