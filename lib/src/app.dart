import 'package:flutter/material.dart';
import './model/json_model.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  myClickFloting() async{
    counter += 1;
      print('counter ==> $counter');

      var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
      var converted = json.decode(response.body);
      print('converted ==> $converted');

      // var objJsonModel = JsonModel(counter, 'counter ==> $counter', 'This is url');
      var objJsonModel = JsonModel.fromJson(converted);
      print('objJsonModel ==> $objJsonModel');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Text('Counter ==> $counter'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_a_photo),
          onPressed: () {
            setState(() {
              myClickFloting();
            });
          },
        ),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {
                print('You Click Icon');
              },
              tooltip: 'This is tooltip',
              icon: Icon(Icons.apps),
            )
          ],
          leading: Icon(Icons.face),
          title: Text('This is App Bar'),
        ),
      ),
    );
  }
}
