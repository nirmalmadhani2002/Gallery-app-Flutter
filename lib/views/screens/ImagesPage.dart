import 'package:flutter/material.dart';
import 'package:gallery_app_flutter/views/Global.dart';

import '../../models/post.dart';

class ImagesPage extends StatefulWidget {
  const ImagesPage({super.key});

  @override
  State<ImagesPage> createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    dynamic args = ModalRoute.of(context)?.settings.arguments as dynamic;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height:size.height,
            width: size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Image.network(
                args,
                fit: BoxFit.cover,
                cacheHeight: 600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
