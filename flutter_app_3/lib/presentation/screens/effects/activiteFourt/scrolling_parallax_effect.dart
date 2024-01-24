import 'package:flutter/material.dart';
import 'package:flutter_app_3/presentation/views/effectActivite/fourtActivite/class_for_parallax.dart';
import 'package:flutter_app_3/utils/location.dart';
import 'package:go_router/go_router.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class ExmapleCuevana extends StatelessWidget {
  const ExmapleCuevana({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                context.go('/');
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text('Cuevana'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 4, 59, 66),
        ),
        body: const Center(
          child: ExampleParallax(),
        ),
      ),
    );
  }
}

class ExampleParallax extends StatelessWidget {
  const ExampleParallax({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final location in locations)
            LocationListItem(
              imageUrl: location.imageUrl,
              name: location.name,
              country: location.place,
            ),
        ],
      ),
    );
  }
}
