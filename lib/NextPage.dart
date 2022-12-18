import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(172, 144, 231, 100),
      appBar: AppBar(
        title: Text('New Event'),
        backgroundColor: Color.fromRGBO(61, 49, 154, 100),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 7.0, horizontal: 15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
              color: Color.fromRGBO(61, 49, 154, 100),
              child: ListTile(
                leading: Icon(Icons.event, size: 35.0, color: Colors.white),
                title: TextField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: _textEditingController,
                  decoration: InputDecoration(
                      labelText: 'Event',
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Builder(builder: (context) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(vertical: 13.0, horizontal: 150.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  backgroundColor: Colors.white24,
                ),
                onPressed: () {
                  String newEvent = _textEditingController.text;
                  Navigator.of(context).pop(newEvent);
                },
                child: Text('ADD', selectionColor: Colors.white54),
              );
            })
          ],
        ),
      ),
    );
  }
}
