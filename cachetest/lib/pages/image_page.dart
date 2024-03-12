import 'package:flutter/material.dart';

import 'package:fast_cached_network_image/fast_cached_network_image.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  final url =
      'https://images.unsplash.com/photo-1707343848723-bd87dea7b118?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

  @override
  Widget build(BuildContext context) {
    final deviceRatio = MediaQuery.of(context).devicePixelRatio;

    return Scaffold(
      appBar: AppBar(
        title: const Text('I.M.A.G.E'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 450,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: FastCachedImage(
            url: url,
            loadingBuilder: (_, __) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorBuilder: (_, __, ___) => const Center(
              child: Icon(Icons.error),
            ),
            cacheHeight: (300 * deviceRatio).round(),
            cacheWidth: (450 * deviceRatio).round(),
          ),
        ),
      ),
    );
  }
}
