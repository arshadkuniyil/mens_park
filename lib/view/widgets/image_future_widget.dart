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
  
      future: getImageUrl(fullSizeImgPath: productImagePath),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
      
          return CachedNetworkImage(
            imageUrl: snapshot.data!,
            fit: BoxFit.cover,
          );
        } else if (snapshot.hasError) {
        ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Loading failed')));
        }
        return const SizedBox(
          height: double.infinity,
          child: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
