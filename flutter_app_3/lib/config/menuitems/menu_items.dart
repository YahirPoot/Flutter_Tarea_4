import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String router;
  final IconData icon;

  MenuItem({required this.title, required this.router, required this.icon});
}

List<MenuItem> listMenuItems = [
  //!Esta parte es de la seccion animations (4 elementos de la lista)
  MenuItem(
      title: 'Animate a page router transition',
      router: '/actividad_1',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Animate a widget using a physics simulation',
      router: '/actividad_2',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Animate the properties of a container',
      router: '/actividad_3',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Fade a widget in and out',
      router: '/actividad_4',
      icon: Icons.arrow_circle_right_outlined),
  //! Esta  parte es de la seccion de Effects (10 elementos de la lista)
  MenuItem(
      title: 'Create a dowload button',
      router: '/actividad_5',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Create a nested navigation flow',
      router: '/actividad_6',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Create a photo filter carousel',
      router: '/actividad_7',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Create a scrolling parallex effect',
      router: '/actividad_8',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Create a shimer loading effect',
      router: '/actividad_9',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Create a straggered menu animation',
      router: '/actividad_10',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Create a typing indicator',
      router: '/actividad_11',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Create an expandable FAB',
      router: '/actividad_12',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Create gradient chat bubbles',
      router: '/actividad_13',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Drag a UI element',
      router: '/actividad_14',
      icon: Icons.arrow_circle_right_outlined),
  //! Esta parte es la de la seccion de Gestures (3 elementos de la lista)
  MenuItem(
      title: 'Add Material touch ripples',
      router: '/actividad_15',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Handle taps',
      router: '/actividad_16',
      icon: Icons.arrow_circle_right_outlined),
  MenuItem(
      title: 'Implement swipe to dismiss',
      router: '/actividad_17',
      icon: Icons.arrow_circle_right_outlined),
];
