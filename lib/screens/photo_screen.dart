import 'package:flutter/material.dart';

class FullPhotoScreen extends StatelessWidget {
  final String urlImage;

  const FullPhotoScreen({required this.urlImage, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      urlImage,
      fit: BoxFit.contain,
    );
  }
}
