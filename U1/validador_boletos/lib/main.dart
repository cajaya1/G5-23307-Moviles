import 'package:flutter/material.dart';
import 'package:app_disenio/themes/app_themes.dart';
import 'package:app_disenio/views/inicio_views.dart';
import 'package:app_disenio/views/resultado_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Validador de Boletos',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/resultado': (context) => const ResultadoView(),
      },
    );
  }
}
