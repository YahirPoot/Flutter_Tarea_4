import 'package:flutter/material.dart';
import 'package:flutter_app_3/config/menuitems/menu_items.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    // Organizar activibool _customTileExpanded = false;dades en tres secciones
    List<MenuItem> animation = List.from(listMenuItems.sublist(0, 4));
    List<MenuItem> effect = List.from(listMenuItems.sublist(4, 14));
    List<MenuItem> gesture = List.from(listMenuItems.sublist(14));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Actividades Tarea 3'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildSection(
                "Animations", "Ejercicios de Animación", animation, context),
            _buildSection("Effects", "Ejercicios de Efectos", effect, context),
            _buildSection("Gestures", "Ejercicios de Gestos", gesture, context),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String subTitle, List<MenuItem> items,
      BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExpansionTile(
          title: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: AutofillHints.creditCardExpirationDay),
          ),
          subtitle: Text(
            subTitle,
            style: const TextStyle(fontSize: 15),
          ),
          trailing: Icon(
            _customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down,
            color: Colors.cyan,
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ...items.map((e) => ListTile(
                      title: Text(e.title),
                      onTap: () {
                        GoRouter.of(context)
                            .go(e.router); // Utilizando GoRouter
                      },
                      trailing: Icon(
                        e.icon,
                        color: Colors.cyan,
                      ),
                    ))
                .toList()
          ],
          onExpansionChanged: (bool expanded) {
            setState(() {
              _customTileExpanded = expanded;
            });
          },
        )
      ],
    );
  }
}
