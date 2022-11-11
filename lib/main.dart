import 'package:flutter/material.dart';
import 'package:material_color_gen/material_color_gen.dart';
import 'ui/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.white.toMaterialColor(),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
