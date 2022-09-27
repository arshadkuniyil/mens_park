
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreenService {
  final fireStore = FirebaseFirestore.instance;

  Future<List<QueryDocumentSnapshot>>? getCategoriesFromFirestore() async {
    final categoriesCollection = await fireStore.collection('categories').get();
    return categoriesCollection.docs;
  }

  Future<List<QueryDocumentSnapshot>> getProductsFromFirestore(
      String categoryName) async {
    final products = await fireStore
        .collection('products')
        .where('category', isEqualTo: categoryName)
        .get();

    return products.docs;
  }
}
