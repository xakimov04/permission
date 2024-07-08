import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:permission/service/firebase_service.dart';

class FirebaseContoller extends ChangeNotifier {
  final Map<int, String> _travel = {};

  Map<int, String> get travel => _travel;

  final _firebaseService = FirebaseService();

  Stream<QuerySnapshot> get lst {
    return _firebaseService.getLocations();
  }
}
