class JsonModel {
// Create Field
  int id;
  String title;
  String url;

// JsonModel(idInt, titleString, urlString) {
//   id = idInt;
//   title = titleString;
//   url = urlString;
// }

  JsonModel(this.id, this.title, this.url);

  JsonModel.fromJson(Map<String, dynamic> parseJSON) {
    id = int.parse(parseJSON['id']);
    title = parseJSON['NameFood'];
    url = parseJSON['ImagePath'];
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'id = $id, title = $title, url = $url';

  }
}
