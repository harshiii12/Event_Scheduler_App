import 'package:event_schedule/NextPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _list = ['4 Dec \n Advanced Git & GitHub Workshop' , '8 Dec \n First steps to Flutter \n Week2'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(172, 144, 231, 100),
        appBar: AppBar(
          title: Text('Event Scheduler'),
          backgroundColor: Color.fromRGBO(61, 49, 154, 100),
        ),
        body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                  key: Key(_list[index]),
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(_list[index],
                        textAlign: TextAlign.center,),
                      ),
                    ),
                  ));
            }),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            backgroundColor: Color.fromRGBO(61, 49, 154, 100),
            onPressed: () async {
              String newText = await Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => NextPage()));
              setState(() {
                _list.add((newText));
              });
            },
            child: Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
