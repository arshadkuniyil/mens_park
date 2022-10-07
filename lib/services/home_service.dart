import 'package:cloud_firestore/cloud_firestore.dart';

abstract class HomeService {
  Future<List<QueryDocumentSnapshot>>? getCategoriesFromFirestore();

  Future<List<QueryDocumentSnapshot>> getProductsFromFirestore(
      String categoryName);
}
