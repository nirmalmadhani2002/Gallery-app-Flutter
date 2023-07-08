import 'package:flutter/material.dart';
import 'package:gallery_app_flutter/controllers/Providers/theme_provider.dart';
import 'package:gallery_app_flutter/views/screens/HomePage.dart';
import 'package:gallery_app_flutter/views/screens/ImagesPage.dart';
import 'package:gallery_app_flutter/views/screens/Splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      builder: (context, _) {
        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            drawerTheme: const DrawerThemeData(backgroundColor: Color(0xff847ccc)),
            appBarTheme: const AppBarTheme(
              color: Color(0XFF6A62B7),
            ),
          ),
          darkTheme: ThemeData.dark(
            useMaterial3: true,
          ),
          themeMode: (Provider.of<ThemeProvider>(context).ld1.isDark == false)
              ? ThemeMode.light
              : ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          initialRoute:'splashscreen',
          routes: {
            '/': (context) => const HomePage(),
            'splashscreen': (context) => const Splashscreen(),
            'imagesPage': (context) => const ImagesPage(),
          },
        );
      },
    );
  }
}
