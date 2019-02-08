import 'package:flutter/material.dart';
import '../model/json_model.dart';

class ImageList extends StatelessWidget {

  List<JsonModel> jsonModel;
  ImageList(this.jsonModel);



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jsonModel.length,
      itemBuilder: (context, int index) {
        return Text(jsonModel[index].title);
      },
    );
  }
}
