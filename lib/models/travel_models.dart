import 'package:cloud_firestore/cloud_firestore.dart';

class TravelModels {
  String id;
  String title;
  String photoUrl;
  String location;

  TravelModels({
    required this.id,
    required this.title,
    required this.photoUrl,
    required this.location,
  });

  factory TravelModels.fromJson(QueryDocumentSnapshot query) {
    return TravelModels(
        id: query.id,
        title: query['title'],
        photoUrl: query['photoUrl'],
        location: query['location']);
  }
}
