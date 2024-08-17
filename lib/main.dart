import 'package:arre_voice/color_constants.dart';
import 'package:arre_voice/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arre Voice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:ColorConstants.primaryColor),
        useMaterial3: true,
        iconTheme: const IconThemeData(color: Colors.white),
        fontFamily: 'Ubuntu'
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
