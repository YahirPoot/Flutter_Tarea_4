import 'package:flutter_app_3/presentation/screens.dart';
import 'package:go_router/go_router.dart';

final routers = GoRouter(
  initialLocation: '/', 
  routes: [
  GoRoute(
    path: '/', 
    builder: (context, state) => const MyHomePage()),
  GoRoute(
    path: '/actividad_1', 
    builder: (context, state) => const Page1()),
  GoRoute(
    path: '/actividad_2', 
    builder: (context, state) => const Actividad2()),
  GoRoute(
    path: '/actividad_3',
    builder: (context, state) => const AnimateContainerApp()),
  GoRoute(
      path: '/actividad_4', builder: (context, state) => const FadeWidget()),
  GoRoute(
      path: '/actividad_5',
      builder: (context, state) => const CreateDownloadButton()),
  GoRoute(
      path: '/actividad_6',
      builder: (context, state) => const CreateBottomNAviagtion()),
  GoRoute(
      path: '/actividad_7', builder: (context, state) => const PhotoFilter()),
  GoRoute(
      path: '/actividad_8',
      builder: (context, state) => const ExmapleCuevana()),
  GoRoute(
      path: '/actividad_9',
      builder: (context, state) => const Actividad5Effects()),
  GoRoute(
      path: '/actividad_10', builder: (context, state) => const StraggerMenu()),
  GoRoute(
      path: '/actividad_11',
      builder: (context, state) => const CreateTypingIndicator()),
  GoRoute(
      path: '/actividad_12',
      builder: (context, state) => const ExmapleFAB()),
  GoRoute(
      path: '/actividad_13',
      builder: (context, state) => const App()),
  GoRoute(
      path: '/actividad_13',
      builder: (context, state) => const App()),
]);
