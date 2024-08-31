import 'package:flutter/material.dart';

class Question_20 extends StatefulWidget {
  const Question_20({super.key});

  @override
  State<Question_20> createState() => _Question_20State();
}

class _Question_20State extends State<Question_20> {
  final List<String> items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question_20'),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            trailing: PopupMenuButton<String>(
              onSelected: (String value) {
                _handleMenuSelection(context, value, items[index]);
              },
              itemBuilder: (BuildContext context) {
                return {'Edit', 'View', 'Delete'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          );
        },
      ),
    );
  }

  void _handleMenuSelection(BuildContext context, String choice, String item) {
    switch (choice) {
      case 'Edit':
        _showEditDialog(context, item);
        break;
      case 'View':
        _showViewDialog(context, item);
        break;
      case 'Delete':
        _showDeleteConfirmationDialog(context, item);
        break;
    }
  }

  void _showEditDialog(BuildContext context, String item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Item'),
          content: Text('Edit the item: $item'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Perform edit operation here
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _showViewDialog(BuildContext context, String item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('View Item'),
          content: Text('Details of the item: $item'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context, String item) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Delete Item'),
            content: Text('Are you sure you want to delete: $item?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  // Perform delete operation here
                },
                child: Text('Delete'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
            ],
          );
        },
    );
  }
}
