import 'package:firebase_storage/firebase_storage.dart';

Future<String> getImageUrl({required String fullSizeImgPath}) async {
  final String imgUrl = await FirebaseStorage.instance
      .ref()
      .child("products/$fullSizeImgPath")
      .getDownloadURL();

  return imgUrl;
}
