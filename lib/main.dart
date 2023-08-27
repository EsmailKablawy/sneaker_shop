import 'package:flutter/material.dart';
import 'package:sneaker_shop/page/homepage.dart';
import 'package:sneaker_shop/page/intropage.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: ThemeData(
        primaryColor: Colors.grey[300],
      ),
      routes: {
        "intropage": (context) => const IntroPage(),
        "homepage": (context) => const HomePage(),
      },
    );
  }
}
