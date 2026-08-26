import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yes/screens/character_session_screen.dart';

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CharacterSessionScreen(), 
                    ),
                  );
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