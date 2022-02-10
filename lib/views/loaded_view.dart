import 'package:flutter/material.dart';
import 'package:test_task/model/photo_model.dart';
import 'package:test_task/screens/photo_screen.dart';

Widget loadedView(List<PhotoData> photos) => GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 50.0,
          mainAxisExtent: 200),
      itemCount: photos.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            _tapToImage(photos[index].urls!, context),
            Expanded(
                child: Text(
              photos[index].description ?? 'Unknown',
              textAlign: TextAlign.center,
            )),
            Text(
              photos[index].user!.name!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        );
      },
    );

Widget _tapToImage(Urls url, BuildContext context) => GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FullPhotoScreen(
                      urlImage: url.full!,
                    )));
      },
      child: _buildImage(url),
    );

Widget _buildImage(Urls url) => SizedBox(
      width: 150,
      height: 150,
      child: Image.network(
        url.small!,
        fit: BoxFit.cover,
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
      ),
    );
