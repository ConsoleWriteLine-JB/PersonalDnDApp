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
                        color: Color(0xFF1C1B1B),
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

                /*Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0XFF1C1B1B),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0XFF20201F),
                              ),
                              child: Text(
                                "Strength",
                                style: TextStyle(
                                  color: Color(0xFFACCFBA),
                                ),
                              ),
                            ),

                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Athletics",
                                    style: TextStyle(
                                      color: Colors.grey
                                    ),
                                  ),
                                ]
                              )
                            )
                          ]
                        ),
                      )
                    ],
                  )
                ), */
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
      color: const Color(0xFF1C1B1B),
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

Widget _buildAbilityBlock ({
  required String title,
  required String score,
  required String modifier,
  required List<Widget> skills,
}) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
      color: Color(0xFF161616),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFF1E1E1E),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: Color(0xFFACCFBA), 
                  fontSize: 14, 
                  fontWeight: FontWeight.bold, 
                  letterSpacing: 1.5,
                )
              ),

              Row(
                children: [
                  Text(
                    score,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900, 
                    ),
                  ),

                  SizedBox(width: 5,),

                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Color(0XFFA95C00),
                    ),
                    child: Text(
                      modifier,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  )
                ]
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: skills,
          )
        )
      ],
    ),
  );
}

Widget _buildSkillRow (String skillname, String modifier, {bool isProficient = false}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                color: isProficient? Color(0xFFFFB77C) : Color(0xFF424242),
              )
            ),

            SizedBox(width: 12),

            Text(
              skillname.toUpperCase(),
              style: TextStyle(
                color: isProficient? Colors.white : Colors.grey,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                letterSpacing: 1
              ),
            ),
          ]
        ),

        Text(
          modifier,
          style: TextStyle(
            color: isProficient? Colors.white : Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          )
          
        )
      ]
    )
  );
}