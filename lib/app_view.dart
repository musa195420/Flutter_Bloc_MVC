import 'package:flutter/material.dart';
import 'package:flutter_bloc_mvc/extenshions/themes.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Pizza App",
      debugShowCheckedModeBanner: false,
      theme: pizzaTheme
    );
  }
}