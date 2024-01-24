import 'package:flutter/material.dart';
import 'package:flutter_app_3/presentation/views/animations_activite/secondActivite/draggable_demo.dart';
import 'package:go_router/go_router.dart';

class Actividad2 extends StatelessWidget {
  const Actividad2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhysicsCardDemo(),
    );
  }
}

class PhysicsCardDemo extends StatelessWidget {
  const PhysicsCardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Animar un Widget'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: const DraggableCard(
        child: FlutterLogo(
          size: 150,
        ),
      ),
    );
  }
}
