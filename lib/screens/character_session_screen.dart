import 'package:flutter/material.dart';
import 'package:yes/screens/tabs/character_stats.dart'; 
import 'package:yes/screens/tabs/character_combat.dart';

class CharacterSessionScreen extends StatefulWidget {
  // We make sure the wrapper accepts the Character!
  // final Character character; 

  const CharacterSessionScreen({
    super.key, 
    // required this.character
  });

  @override
  State<CharacterSessionScreen> createState() => _CharacterSessionScreenState();
}

class _CharacterSessionScreenState extends State<CharacterSessionScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    // THE CLEAN TAB LIST!
    final List<Widget> characterTabs = [
      // We call our newly created Lego brick!
      const StatTab(), 
      const CombatTab(),
      const Center(child: Text("SPELL BOOK", style: TextStyle(color: Colors.white, fontSize: 24))),
      const Center(child: Text("INVENTORY", style: TextStyle(color: Colors.white, fontSize: 24))),
      const Center(child: Text("FEATURES", style: TextStyle(color: Colors.white, fontSize: 24))),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF131313),
      body: characterTabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF090909),
        selectedItemColor: const Color(0xFFFFB77C),
        unselectedItemColor: Colors.grey.shade700,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index; 
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.shield), label: 'Combat'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Spells'),
          BottomNavigationBarItem(icon: Icon(Icons.backpack), label: 'Inventory'),
          BottomNavigationBarItem(icon: Icon(Icons.stars), label: 'Features'),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:() {
          print('Opening Notes');
        },
        backgroundColor: const Color(0xFFFFB77C),
        icon: const Icon(Icons.note_add, color: Colors.black),
        label: const Text('Notes', style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold
        ))
      ),
    );
  }
}