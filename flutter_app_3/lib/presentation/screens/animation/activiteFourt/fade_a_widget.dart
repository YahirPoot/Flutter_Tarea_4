import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FadeWidget extends StatelessWidget {
  const FadeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Opacity Demo';
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: CotainerDisappear(title: appTitle),
    );
  }
}

class CotainerDisappear extends StatefulWidget {
  const CotainerDisappear({super.key, required this.title});

  final String title;

  @override
  State<CotainerDisappear> createState() => _CotainerDisappearState();
}

class _CotainerDisappearState extends State<CotainerDisappear> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.go('/');
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
