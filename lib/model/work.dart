import 'package:flutter/foundation.dart';

class Work {
  final String title;
  final String imageURL;
  final String url;
  final String date;
  final String description;
  final List<String> chips;

  Work(
      {@required this.title,
      @required this.imageURL,
      @required this.url,
      @required this.date,
      @required this.description,
      @required this.chips});
}
