import 'package:flutter/material.dart';

class CharacterSessionScreen extends StatefulWidget {
  const CharacterSessionScreen({super.key});

  @override
  State<CharacterSessionScreen> createState() => _CharacterSessionScreenState();
}

class _CharacterSessionScreenState extends State<CharacterSessionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090909),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Color(0xFFFFB77C), width: 4.0), // Copper line
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0), // Pushed text away from the line
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Aligned text to the left!
                      children: [
                        const Text(
                          "MECHANICAL\nLEDGER",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            height: 1.1,
                            letterSpacing: 2.0,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "SUBJECT: IRON-GEAR GNOMISH DELVER //\nREGISTRY: 89-XJ",
                          style: TextStyle(
                            color: Color(0xFFACCFBA),
                            fontSize: 10,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                
                SizedBox(height: 40),

                Row(
                  children: const [
                    Icon(Icons.shield, color: Color(0xFFFFB77C), size: 24), // Added the shield!
                    SizedBox(width: 12),
                    Text(
                      "CHASSIS INTEGRITY",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _darkCard(
                        "Armour Class",
                        "18",
                      )
                    ),

                    Expanded(
                      child: _darkCard(
                        "Movement Speed",
                        "30ft"
                      )
                    )
                  ]
                ),

                SizedBox(height: 16),

                Container(
                  height: 120,
                  width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF161616),
                      ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "STRUCTURAL INTEGRITY [HP]",
                            style: TextStyle(
                              color: Colors.grey, 
                              fontSize: 10, 
                              fontWeight: FontWeight.bold, 
                              letterSpacing: 1.0
                            )
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(text: "84", style: TextStyle(color: Color(0xFFFFB77C), fontSize: 24, fontWeight: FontWeight.bold)),
                                TextSpan(text: " / 84", style: TextStyle(color: Colors.grey, fontSize: 16)),
                              ]
                            )
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),
                      // A quick placeholder for your HP Bar
                      Container(height: 12, color: const Color(0xFFFFB77C)),
                    ]
                  )
                  )
                )
              ],
            )
          )
        )
      )
    );
  }
}

Widget _darkCard (String title, String value, {Color valueColor = Colors.white}) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 24),
    decoration: BoxDecoration(
      color: const Color(0xFF161616),
      borderRadius: BorderRadius.circular(4)
    ),
    child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
        SizedBox(height: 8),
        Text(
            value,
            style: TextStyle(color: valueColor, fontSize: 40, fontWeight: FontWeight.w900, height: 1.0),
        ),
      ]
    )
  );
}