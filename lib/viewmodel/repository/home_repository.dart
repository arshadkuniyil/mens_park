
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:mens_park/services/home_service.dart';

@LazySingleton(as: HomeService)
class HomeRepository extends HomeService{
  final fireStore = FirebaseFirestore.instance;

  @override
  Future<List<QueryDocumentSnapshot>>? getCategoriesFromFirestore() async {
    final categoriesCollection = await fireStore.collection('categories').get();
    return categoriesCollection.docs;
  }

  @override
  Future<List<QueryDocumentSnapshot>> getProductsFromFirestore(
      String categoryName) async {
    final products = await fireStore
        .collection('products')
        .where('category', isEqualTo: categoryName)
        .get();

    return products.docs;
  }
}
