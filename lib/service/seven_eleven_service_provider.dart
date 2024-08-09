import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sevenElevenServiceProvider =
    FutureProvider<List<DocumentSnapshot>>((ref) async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('seven_eleven_recommend')
      .get();
  return querySnapshot.docs;
});
