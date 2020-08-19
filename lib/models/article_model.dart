import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ArticleModel {
  final String title;
  final String subtitle;
  final String authors;
  final Timestamp date;
  final String intro;
  final List<String> body;
  final List<String> imagesAsset;
  final String videoAsset;

  ArticleModel({
    @required this.title,
    this.subtitle,
    this.authors,
    this.date,
    @required this.intro,
    @required this.body,
    this.imagesAsset,
    this.videoAsset,
  });

  ArticleModel.fromData(Map<String, dynamic> data)
      : title = data['title'],
        subtitle = data['subtitle'],
        authors = data['authors'],
        date = data['date'],
        intro = data['intro'],
        body = List.from(data['body']),
        imagesAsset = List.from(data['images']),
        videoAsset = data['video'];
}
