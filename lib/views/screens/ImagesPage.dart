import 'package:flutter/material.dart';
import 'package:async_wallpaper/async_wallpaper.dart';

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
          Stack(
            alignment: const Alignment(0,0.9),
            children: [
              SizedBox(
                height: size.height,
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
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      AsyncWallpaper.setWallpaper(url: args,wallpaperLocation: AsyncWallpaper.BOTH_SCREENS,);
                    },
                    child: const Text(
                      "Wallpaper Set",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
