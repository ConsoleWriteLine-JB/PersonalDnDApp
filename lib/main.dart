import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

class CharacterHubScreen extends StatelessWidget { //Stateless means static screen (Stateful is the opposite)
  const CharacterHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is the blank canvas for a single screen
    return Scaffold(
      body: SafeArea(
        // SafeArea prevents your UI from overlapping with phone hardware eg. Islands at the top
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column( //Will stack list of widgets verically
            crossAxisAlignment: CrossAxisAlignment.start, //Forces everything to align to the right
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

              Container(
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
                              'assets/quiver.jpg',
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
                            'Quiver',
                            style: GoogleFonts.cinzel(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 4,),

                          Text(
                            'Level 11 Gnome Artificer',
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
                                    '8',
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
                                    '20',
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
                                    '12',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}