import 'package:flutter/material.dart';

import 'UI/profile_case.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarScreen();
  }
}

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Recipes"),
        actions: [Text('Главная'),
         Text('Рецепты'),
         Text('Избранное'),  
         TextButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => const ProfileCase()));},
           child: Text('Войти', 
           style: TextStyle(color: Colors.amber, fontSize: 25),),),],
      ),
    );
  }
}

