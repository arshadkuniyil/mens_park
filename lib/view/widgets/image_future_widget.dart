import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mens_park/viewmodel/service/fetch_image_url.dart';

class ImageFutureWidget extends StatelessWidget {
  const ImageFutureWidget({
    Key? key,
    required this.productImagePath,
  }) : super(key: key);

  final String productImagePath;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      //TODO class
      future: getImageUrl(fullSizeImgPath: productImagePath),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //TODO ERROR BUILDER
          return CachedNetworkImage(
            imageUrl: snapshot.data!,
            fit: BoxFit.cover,
          );
        } else if (snapshot.hasError) {
          //TODO
        }
        return const SizedBox(
          height: double.infinity,
          child: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
