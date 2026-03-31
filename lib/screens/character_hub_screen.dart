import 'package:flutter/material.dart';
import 'package:yes/models/character.dart';
import 'package:yes/widgets/character_card.dart';

class CharacterHubScreen extends StatefulWidget {
  const CharacterHubScreen({super.key});

  @override
  State<CharacterHubScreen> createState() => _CharacterHubScreenState();
}

class _CharacterHubScreenState extends State<CharacterHubScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // Scaffold is the blank canvas for a single screen
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed:() {
          print('Opening Character Creator');
        },
        backgroundColor: const Color(0xFFFFB77C),
        icon: const Icon(Icons.add, color: Colors.black),
        label: const Text('New Unit', style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold
        ))
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              const Text(
                'Character Hub',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  height: 1.0, // Tightens the space between the two words
                ),
              ),

              const Text(
                'WORKSHOP REGISTRY',
                style: TextStyle(
                  color: Color(0xFFACCFBA),
                  fontSize: 12,
                  letterSpacing: 2.0, // Adds that wide, technical spacing
                ),
              ),
              SizedBox(height: 20,),

              SizedBox(
                height: 700, 
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  }, 
                  itemCount: myRoster.length,
                  itemBuilder: (context, index) {
                    final character = myRoster[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: CharacterCard(
                        name: character.name,
                        subtitle: character.subtitle,
                        imagePath: character.imagePath,
                        strength: character.strength,
                        intelligence: character.intelligence,
                        dexterity: character.dexterity,
                      ),
                    );
                  },
                  
                ),
              ),

              const SizedBox(height: 32),
              const Text('ALL Characters', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),

              ListView.builder(
                shrinkWrap: true, 
                physics: const NeverScrollableScrollPhysics(), 
                itemCount: myRoster.length,
                itemBuilder: (context, index) {
                  final character = myRoster[index];
                  final bool isActive = index == _currentIndex;
                  
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: isActive ? const Color(0xFF2A2A2A) : Colors.transparent,

                        border: Border(
                        left: BorderSide(
                          color: isActive? const Color(0xFFFFB77C) : Colors.transparent,
                          width: 4.0,
                        )
                      ),
                      ),
                      
                      child: ListTile(
                        leading: Container(
                          width: 48,
                          height:  48,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF424242)),
                          ),
                          child: Image.asset(character.imagePath, fit: BoxFit.cover)
                        ),
                        
                        title: Text(
                          character.name, 
                          style: TextStyle(
                            color: isActive? Colors.white : Colors.grey, 
                            fontWeight: FontWeight.bold
                          )
                        ),
                        
                        subtitle: Text(
                          character.subtitle,
                          style: const TextStyle(
                            color: Colors.grey, 
                            fontSize: 12
                          )
                        ),
                        
                        trailing: Icon(
                            Icons.chevron_right,
                            color: isActive? const Color(0xFFFFB77C) : const Color(0xFF424242),
                        ),

                        onTap: () {
                          _pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 700),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ],
        ),
        ),
        ),
      ),
    );
  }
}