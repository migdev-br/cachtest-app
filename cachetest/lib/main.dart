import 'package:flutter/material.dart';

import 'package:fast_cached_network_image/fast_cached_network_image.dart';

import 'pages/home_page.dart';
import 'pages/image_page.dart';

Future<void> main() async {
  await FastCachedImageConfig.init(clearCacheAfter: const Duration(days: 15));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => const HomePage());
        }

        return MaterialPageRoute(builder: (context) => const ImagePage());
      },
    );
  }
}
