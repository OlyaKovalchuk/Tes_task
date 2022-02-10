import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart';
import 'package:test_task/model/photo_model.dart';

class Repository {
  Repository();

  String token =
      'ab3411e4ac868c2646c0ed488dfd919ef612b04c264f3374c97fff98ed253dc9';

  Future getPhotos() async {
    try {
      var url = Uri.parse('https://api.unsplash.com/photos/?client_id=$token');
      Response response = await get(url);
      List body = json.decode(response.body);
      List<PhotoData> photosData =
          body.map((photo) => PhotoData.fromJson(photo)).toList();
      return photosData;
    } catch (error) {
      log(error.toString());
    }
  }
}
