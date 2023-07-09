import 'package:flutter/material.dart';
import 'package:gallery_app_flutter/controllers/Providers/api_helper.dart';
import 'package:gallery_app_flutter/controllers/Providers/theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import '../../controllers/ads_helper.dart';
import '../../models/post.dart';
import '../Global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    AdsHelper.adHelper.loadBannerAd();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.network(
                "https://i.pinimg.com/736x/2e/6c/3f/2e6c3f56d41d284b0c477ebdce6997df.jpg",
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: const Text("Theme light/dark"),
              leading: const Icon(Icons.light_mode),
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .changeTheme();
              },
            ),
            ListTile(
                title: const Text("Settings"),
                leading: const Icon(Icons.settings),
                onTap: () {}),
            ListTile(
                title: const Text("About"),
                leading: const Icon(Icons.app_blocking_outlined),
                onTap: () {}),
          ],
        ),
      ),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverSafeArea(
              top: false,
              sliver: SliverAppBar(
                pinned: true,
                floating: true,
                snap: true,
                centerTitle: true,
                title: Text(
                  "Gallery App",
                  style: GoogleFonts.brawler(fontSize: 30),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.light_mode),
                    onPressed: () {
                      Provider.of<ThemeProvider>(context, listen: false)
                          .changeTheme();
                    },
                  ),
                ],
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 0,
                  ),
                ),
              ),
            ),
          )
        ],
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0XFF6A62B7).withAlpha(50),
                ),
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      Global.images = val;
                    });
                  },
                  cursorColor: const Color(0XFF6A62B7),
                  decoration: InputDecoration(
                      icon: const Icon(Icons.search, color: Color(0XFF6A62B7)),
                      hintText: 'Search...',
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "${Global.images} Images",
                style: GoogleFonts.sourceCodePro(fontSize: 25),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                flex: 8,
                child: SingleChildScrollView(
                  child: Container(
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        FutureBuilder(
                          future: APIHelper.apiHelper.fetchDate(),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.hasError) {
                              return Center(
                                child: Text("Error: ${snapshot.error}"),
                              );
                            } else if (snapshot.hasData) {
                              ImageModel? data = snapshot.data;
                              return (data != null)
                                  ? Center(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Column(
                                              children: [
                                                myimages(
                                                  images: data.imageUrl,
                                                  images1: data.imageUel1,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                myimages(
                                                  images: data.imageUel2,
                                                  images1: data.imageUel3,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                myimages(
                                                  images: data.imageUel4,
                                                  images1: data.imageUel5,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                myimages(
                                                  images: data.imageUel6,
                                                  images1: data.imageUel7,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                myimages(
                                                  images: data.imageUel8,
                                                  images1: data.imageUel9,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                myimages(
                                                  images: data.imageUel10,
                                                  images1: data.imageUel11,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                myimages(
                                                  images: data.imageUel12,
                                                  images1: data.imageUel13,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                myimages(
                                                  images: data.imageUel14,
                                                  images1: data.imageUel5,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                myimages(
                                                  images: data.imageUel16,
                                                  images1: data.imageUel17,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                myimages(
                                                  images: data.imageUel18,
                                                  images1: data.imageUel19,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : const Center(
                                      child: Text("no data found.."),
                                    );
                            }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: AdWidget(ad: AdsHelper.adHelper.bannerAd!),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget myimages({
    required String images,
    required String images1,
  }) {
    return Row(
      children: [
        const SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("imagesPage", arguments: images);
          },
          child: SizedBox(
            width: 180,
            height: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                images,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("imagesPage", arguments: images1);
          },
          child: SizedBox(
            width: 180,
            height: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                images1,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
