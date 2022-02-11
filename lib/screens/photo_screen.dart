import 'package:flutter/material.dart';

class FullPhotoScreen extends StatelessWidget {
  final String urlImage;

  const FullPhotoScreen({required this.urlImage, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      urlImage,
      fit: BoxFit.contain,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return const Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          ),
        );
      },
    );
  }
}
