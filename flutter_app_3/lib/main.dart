import 'package:flutter/material.dart';
import 'package:flutter_app_3/config/routers/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routers,
      debugShowCheckedModeBanner: false,
      title: 'My App Flutter',
    );
  }
}
