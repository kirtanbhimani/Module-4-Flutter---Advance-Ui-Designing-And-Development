import 'package:flutter/material.dart';

class Question_30 extends StatefulWidget {
  const Question_30({super.key});

  @override
  State<Question_30> createState() => _Question_30State();
}

class _Question_30State extends State<Question_30> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ListManagementPage(),
    );
  }
}

class ListManagementPage extends StatefulWidget {
  @override
  _ListManagementPageState createState() => _ListManagementPageState();
}

class _ListManagementPageState extends State<ListManagementPage> {
  final _textController = TextEditingController();
  final List<String> _names = [];
  String? _editingName;
  int? _editingIndex;

  void _addName() {
    final name = _textController.text;
    if (name.isNotEmpty) {
      setState(() {
        if (_editingIndex != null) {
          // Edit existing item
          _names[_editingIndex!] = name;
          _editingIndex = null;
        } else {
          // Add new item
          _names.add(name);
        }
        _textController.clear();
      });
    }
  }

  void _showNameDialog(String name) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Selected Name'),
          content: Text(name),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showContextMenu(int index) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100.0, 100.0, 0.0, 0.0),
      items: [
        PopupMenuItem(
          child: Text('Edit Item'),
          value: 'edit',
        ),
        PopupMenuItem(
          child: Text('Delete Item'),
          value: 'delete',
        ),
        PopupMenuItem(
          child: Text('Exit'),
          value: 'exit',
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      if (value == 'edit') {
        _editItem(index);
      } else if (value == 'delete') {
        _confirmDelete(index);
      }
    });
  }

  void _editItem(int index) {
    setState(() {
      _editingName = _names[index];
      _editingIndex = index;
      _textController.text = _editingName!;
    });
  }

  void _confirmDelete(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Deletion'),
          content: Text('Are you sure you want to delete this item?'),
          actions: <Widget>[
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                setState(() {
                  _names.removeAt(index);
                });
                Navigator.of(context).pop();
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
        title: Text('List Management App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Enter Name',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _addName,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _names.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      _showNameDialog(_names[index]);
                    },
                    onLongPress: () {
                      _showContextMenu(index);
                    },
                    child: ListTile(
                      title: Text(_names[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}