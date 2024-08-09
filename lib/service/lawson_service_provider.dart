import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lawsonServiceProvider =
    FutureProvider<List<DocumentSnapshot>>((ref) async {
  final querySnapshot =
      await FirebaseFirestore.instance.collection('lawson_recommend').get();
  return querySnapshot.docs;
});
