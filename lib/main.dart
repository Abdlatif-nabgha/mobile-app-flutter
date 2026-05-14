import 'package:flutter/material.dart';
import 'package:my_first_app/app_theme.dart';

void main() {
  runApp(const MyApp());
}

// stateless
// materail app
// scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gestion de syndic",
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestion des syndics"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bienvenue",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),
            ),
            Image.asset(
              "assets/images/image-1.png",
              height: 200,
              width: 200,
            ),
            const Text(
              "Application de Gestion de syndic",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("test");
              }, 
              child: const Text("Continuer")
            )
          ],
        ),
      ),
    );
  }
}