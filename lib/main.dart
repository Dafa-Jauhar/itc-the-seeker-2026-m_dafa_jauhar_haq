import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const ITCMobileApp());
}

class ITCMobileApp extends StatelessWidget {
  const ITCMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITC 2026', 
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF43604C),
          primary: const Color(0xFF43604C),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}