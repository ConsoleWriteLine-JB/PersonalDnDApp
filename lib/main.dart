import 'package:flutter/material.dart';
import 'screens/character_hub_screen.dart';



void main() {
  runApp(const ArtificerApp());
}

class ArtificerApp extends StatelessWidget {
  const ArtificerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the red "DEBUG" banner
      title: 'QuiverWorks',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF161616), 
        primaryColor: const Color(0xFFFFB77C),
        // We will set up your custom fonts here later!
      ),
      home: const CharacterHubScreen(), //First Screen the app tries to open (Will need to change to another screen later!)
    );
  }
}