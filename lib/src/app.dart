import 'package:flutter/material.dart';
import './model/json_model.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import './widget/image_list.dart';
import './widget/image_list.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<JsonModel> jsonModel = [];

  myClickFloting() async {
    counter += 1;
    print('counter ==> $counter');

    var response = await get(
        'https://www.androidthai.in.th/ice/getFood.php?isAdd=true&id=$counter');
    var converted = json.decode(response.body);
    print('converted ==> $converted');

    for (var data in converted) {
      print('data ==> $data');
      var objJsonModel = JsonModel.fromJson(data);
      print('objJsonModel ==> $objJsonModel');
      setState(() {
      jsonModel.add(objJsonModel);
    });
    }

    
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: ImageList(jsonModel),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_a_photo),
          onPressed: () {
            myClickFloting();
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
