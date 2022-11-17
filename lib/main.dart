import 'package:flutter/material.dart';
import 'package:tarea8/screenreel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Mostrar o no la cinta de modo debug.
      title: 'Flutter',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.black,
      ),

      // ThemeData(
      //   primarySwatch: Colors.blue,
      //   useMaterial3: true,
      // ),
      home: const ScreenReels(),
    );
  }
}
