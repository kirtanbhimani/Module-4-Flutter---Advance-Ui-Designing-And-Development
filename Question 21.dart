import 'package:flutter/material.dart';

class Question_21 extends StatefulWidget {
  const Question_21({super.key});

  @override
  State<Question_21> createState() => _Question_21State();
}

class _Question_21State extends State<Question_21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question_21'),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}

class InboxPage extends StatelessWidget {
    final List<Map<String, String>> emails = [
      {'sender': 'Kirtan', 'subject': 'Meeting Reminder', 'body': 'Don\'t forget the meeting tomorrow at 10 AM.'},
      {'sender': 'Dharmik', 'subject': 'Lunch Plans', 'body': 'Are we still on for lunch at noon?'},
      {'sender': 'Harsh', 'subject': 'Weekly Newsletter', 'body': 'Check out our latest news and updates.'},
    ];
@override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
        actions: [
          IconButton(
          icon: Icon(Icons.email_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComposePage()),
              );
            },
          ),
        ],
      ),

    body: ListView.builder(
      itemCount: emails.length,
      itemBuilder: (context, index) {
        final email = emails[index];
        return ListTile(
          title: Text(email['subject']!),
          subtitle: Text(email['sender']!),
          onTap: () {
            Navigator.push(
            context,
              MaterialPageRoute(
              builder: (context) => EmailDetailPage(email: email),
                ),
                );
              },
            );
          },
        ),
      );
    }
}

class EmailDetailPage extends StatelessWidget {
    final Map<String, String> email;

    EmailDetailPage({required this.email});
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(email['subject']!),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'From: ${email['sender']}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(email['body']!),
            ],
          ),
        ),
      );
    }
}

class ComposePage extends StatefulWidget {
    @override
    _ComposePageState createState() => _ComposePageState();
    }

    class _ComposePageState extends State<ComposePage> {
    final _toController = TextEditingController();
    final _subjectController = TextEditingController();
    final _bodyController = TextEditingController();

    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Compose Email'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
          TextField(
            controller: _toController,
            decoration: InputDecoration(labelText: 'To'),
          ),
          TextField(
            controller: _subjectController,
            decoration: InputDecoration(labelText: 'Subject'),
          ),
          TextField(
            controller: _bodyController,
            decoration: InputDecoration(labelText: 'Body'),
            maxLines: 8,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add email sending logic here
              Navigator.pop(context);
            },
          child: Text('Send'),
              ),
            ],
          ),
        ),
      );
    }
}
