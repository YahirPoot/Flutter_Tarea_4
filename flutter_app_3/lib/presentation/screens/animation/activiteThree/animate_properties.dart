import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimateContainerApp extends StatefulWidget {
  const AnimateContainerApp({super.key});

  @override
  State<AnimateContainerApp> createState() => _AnimateContainerAppState();
}

class _AnimateContainerAppState extends State<AnimateContainerApp> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                context.go('/');
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text('Animar un contenedor'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration:
                BoxDecoration(color: _color, borderRadius: _borderRadius),
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              _color = Color.fromARGB(random.nextInt(256), random.nextInt(256),
                  random.nextInt(256), 1);
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
