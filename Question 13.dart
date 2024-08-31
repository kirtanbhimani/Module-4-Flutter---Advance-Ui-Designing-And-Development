import 'package:flutter/material.dart';

class Question_13 extends StatefulWidget {
  const Question_13({super.key});

  @override
  State<Question_13> createState() => _Question_13State();
}

class _Question_13State extends State<Question_13> {
  String _selectedValue = 'Option 1';
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question_13'),
        backgroundColor: Colors.blueAccent,
        actions: [
          // Spinner (Dropdown Button)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DropdownButton<String>(
              value: _selectedValue,
              icon: Icon(Icons.arrow_downward),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
              items: <String>['Option 1', 'Option 2', 'Option 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          // Search Input Field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: 200,
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    _searchQuery = text;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.white54),
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('Selected: $_selectedValue\nSearch Query: $_searchQuery'),
      ),
    );
  }
}
