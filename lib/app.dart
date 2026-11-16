import 'package:flutter/material.dart';

import 'ui/visitas/visitas_page.dart';

class CheckpointApp extends StatelessWidget {
  const CheckpointApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkpoint',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0054A6)),
      ),
      home: const VisitasPage(),
    );
  }
}
