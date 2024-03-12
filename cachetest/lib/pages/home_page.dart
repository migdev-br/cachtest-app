import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    debugInvertOversizedImages = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text('H.O.M.E'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).pushNamed('/image'),
          child: const Text('Navigate to image page'),
        ),
      ),
    );
  }
}
