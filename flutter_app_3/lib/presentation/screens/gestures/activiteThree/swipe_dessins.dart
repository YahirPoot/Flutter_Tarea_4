import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SwipeDessins extends StatefulWidget {
  const SwipeDessins({super.key});

  @override
  State<SwipeDessins> createState() {
    return _SwipeDessinsState();
  }
}

class _SwipeDessinsState extends State<SwipeDessins> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Implement swipe to dismiss',
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan)),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              context.go('/');
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Implement swipe to dismiss'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              key: Key(item),
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('$item dismissed')));
              },
              background: Container(color: Colors.red),
              child: ListTile(
                title: Text(item),
              ),
            );
          },
        ),
      ),
    );
  }
}
