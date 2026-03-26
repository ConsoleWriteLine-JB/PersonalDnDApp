import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';

class Character {
  final String name;
  final String subtitle;
  final String imagePath;
  final int strength;
  final int intelligence;
  final int dexterity;

  Character({
    required this.name,
    required this.subtitle,
    required this.imagePath,
    required this.strength,
    required this.intelligence,
    required this.dexterity,
  });
}

final List<Character> myRoster = [
  Character(
    name: 'Quiver',
    subtitle: 'Level 11 Gnome Artificer',
    imagePath: 'assets/quiver.jpg', 
    strength: 8,
    intelligence: 20,
    dexterity: 12,
  ),
  Character(
    name: 'Boblin',
    subtitle: 'Level 3 Goblin Rogue',
    imagePath: 'assets/goblin.jpg', 
    strength: 14,
    intelligence: 4,
    dexterity: 20,
  ),
  Character(
    name: 'Rango',
    subtitle: 'Level 20 Frog Ranger',
    imagePath: 'assets/frog.jpg', 
    strength: 20,
    intelligence: 20,
    dexterity: 20,
  ),
];

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

class CharacterCard extends StatelessWidget {
  final String name;
  final String subtitle;
  final String imagePath;
  final int strength;
  final int intelligence;
  final int dexterity;

  const CharacterCard({
    super.key,
    required this.name,
    required this.subtitle,
    required this.imagePath,
    required this.strength,
    required this.intelligence,
    required this.dexterity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 700,
        width: double.infinity,
        decoration: const BoxDecoration(
          color:  Color(0xFF2A2A2A),
          border: Border(
            left: BorderSide(
              color: Color(0xFFACCFBA),
              width: 4.0
            )
          )
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //Character Image
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ClipRRect(
                    child: Image.asset(
                      imagePath,
                      height: 350,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 25,
                  left: 25,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFB77C),
                    ),
                    child: const Text(
                      'Active Unit',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  )
                )
              ]
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.cinzel(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 4,),

                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Color(0xFFACCFBA),
                      fontSize: 12,
                      letterSpacing: 1.5,
                    ),
                  ),

                  SizedBox(height: 24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Strength',
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1.2,
                              color: Color(0xFF8B928D)
                            ),
                          ),

                          Text(
                            strength.toString(),
                            style: GoogleFonts.robotoMono(
                              color: Color(0xFFFFB77C),
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),

                      Container(
                        height: 30,
                        width: 1,
                        color:  Color(0xFF424242),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Intelligence',
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1.2,
                              color: Color(0xFF8B928D)
                            ),
                          ),

                          Text(
                            intelligence.toString(),
                            style: GoogleFonts.robotoMono(
                              color: Color(0xFFFFB77C),
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),

                      Container(
                        height: 30,
                        width: 1,
                        color:  Color(0xFF424242),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dexterity',
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1.2,
                              color: Color(0xFF8B928D)
                            ),
                          ),

                          Text(
                            dexterity.toString(),
                            style: GoogleFonts.robotoMono(
                              color: Color(0xFFFFB77C),
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),
            
            Center(
              child: ElevatedButton(
                onPressed: () {
                  print('Loading Quiver....');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4E6E5D),
                  minimumSize: Size(200, 50),
                  shape: LinearBorder()
                ),
                child: const Text(
                  'RESUME SESSION',
                  style: TextStyle(
                    color: Color(0xFFCBEFDA),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    )
                  ),
                ),
            ),

            SizedBox(height: 17,),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  print('Loading Quiver....');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0x004E6E5D),
                  minimumSize: Size(200, 50),
                  shape:LinearBorder()
                ),
                child: const Text(
                  'VIEW LOGS',
                  style: TextStyle(
                    color: Color(0xFFC1C8C2),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    )
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}