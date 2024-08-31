import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question_16 extends StatefulWidget {
  const Question_16({super.key});

  @override
  State<Question_16> createState() => _Question_16State();
}

class _Question_16State extends State<Question_16> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CitySelectionPage(),
    );
  }
}

class CitySelectionPage extends StatefulWidget {
  @override
  _CitySelectionPageState createState() => _CitySelectionPageState();
}

class _CitySelectionPageState extends State<CitySelectionPage> {
  String _selectedCity = 'No city selected';

  void _showCitySelectionDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a City'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RadioListTile<String>(
                title: Text('Amreli'),
                value: 'Amreli',
                groupValue: _selectedCity,
                onChanged: (String? value) {
                  setState(() {
                    _selectedCity = value!;
                  });
                  Navigator.of(context).pop();
                },
              ),
              RadioListTile<String>(
                title: Text('Surat'),
                value: 'Surat',
                groupValue: _selectedCity,
                onChanged: (String? value) {
                  setState(() {
                    _selectedCity = value!;
                  });
                  Navigator.of(context).pop();
                },
              ),
              RadioListTile<String>(
                title: Text('Ahmedabad'),
                value: 'Ahmedabad',
                groupValue: _selectedCity,
                onChanged: (String? value) {
                setState(() {
                  _selectedCity = value!;
                });
                Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Question_16'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Question 16',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 25,),
              Text('Write a code to display alert dialog with list of cities and Single choice selection display selected city in TextView ',style: TextStyle(fontSize: 25),),
              SizedBox(height: 25,),
              Text(
                _selectedCity,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              CupertinoButton.filled(
                child: Text('Select City'),
                onPressed: () => _showCitySelectionDialog(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
