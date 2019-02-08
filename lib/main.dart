import 'package:flutter/material.dart';

// Step First
void main() {
  var app = MaterialApp(
    home: Scaffold(
      body: Text('This is body'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: () {
          print('You Click Floating');
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

  runApp(app);
}
