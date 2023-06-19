import 'package:flutter/material.dart';
import 'package:tds/Page/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Registrasi",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.blueAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const LandingPage(),
    );
  }
}
