import 'package:gallery_app_flutter/models/post.dart';
import 'package:gallery_app_flutter/views/Global.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIHelper {
  APIHelper._();

  static final APIHelper apiHelper = APIHelper._();

  Future<ImageModel?> fetchDate() async {

    http.Response res = await http.get(
      Uri.parse(
        'https://pixabay.com/api/?key=35722369-0ff268194d7105d16de321576&q=${Global.images}&image_type=photo&pretty=true',
      ),
    );

    if (res.statusCode == 200) {
      Map decodedData = jsonDecode(res.body);

      ImageModel imageModel = ImageModel.fromJson(json: decodedData);

      return imageModel;
    }
    return null;
  }
}
