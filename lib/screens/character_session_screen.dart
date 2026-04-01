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
      backgroundColor: const Color(0xFF131313),
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
                          "SUBJECT: ARTIFICER GNOME //\nREGISTRY: QUIVER //",
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

                    SizedBox(width: 5,),

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
                ),

                SizedBox(height: 16),

                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFF0E0E0E),
                    border: Border.all(
                      color: Color.fromARGB(255, 24, 24, 24)
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hardened Circuits (Saves)",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0XffACCFBA),
                          )
                        ),

                        SizedBox(height: 10,),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(117, 255, 183, 124),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 24, 24, 24)
                                  )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),

                                    Text(
                                      "STR",
                                      style: TextStyle(
                                        color: Color(0XFFFFB77C),
                                      ),
                                    ),
                                    
                                    Text(
                                      "+5",
                                      style: TextStyle(
                                        color: Color(0XFFFFB77C),
                                      ),
                                    )
                                  ]
                                )
                              ),
                            ),

                            SizedBox(width: 10,),

                            Expanded(
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Color.fromARGB(255, 24, 24, 24)
                                  )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),

                                    Text(
                                      "DEX",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                    ),
                                    
                                    Text(
                                      "+1",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                    )
                                  ]
                                )
                              ),
                            ),

                            SizedBox(width: 10,),
                            
                            Expanded(
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Color.fromARGB(255, 24, 24, 24)
                                  )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),

                                    Text(
                                      "CON",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                    ),
                                    
                                    Text(
                                      "+3",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                    )
                                  ]
                                )
                              ),
                            ),
                            
                          ]
                        ),

                        SizedBox(height: 10,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child:  Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Color.fromARGB(255, 24, 24, 24)
                                  )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),

                                    Text(
                                      "INT",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                    ),
                                    
                                    Text(
                                      "+5",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                    )
                                  ]
                                )
                              ),
                            ),

                            SizedBox(width: 10,),

                            Expanded(
                              child:  Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Color.fromARGB(255, 24, 24, 24)
                                  )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),

                                    Text(
                                      "WIS",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                    ),
                                    
                                    Text(
                                      "+0",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                    )
                                  ]
                                )
                              ), 
                            ),

                            SizedBox(width: 10,),
                           
                            Expanded(
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Color.fromARGB(255, 24, 24, 24)
                                  )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),

                                    Text(
                                      "CHA",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                    ),
                                    
                                    Text(
                                      "-2",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                    )
                                  ]
                                )
                              ),
                            ),
                          ]
                        ),
                      ]
                    )
                  )
                ),

                //Hierso

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