import 'package:flutter/material.dart';

class SpellTab extends StatelessWidget {

  const SpellTab({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                decoration: const BoxDecoration(
                  border: Border(left: BorderSide(color: Color(0xFFFFB77C), width: 4.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "REGISTERED\nSPELLS",
                        style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w900, height: 1.1, letterSpacing: 2.0),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "ARCANE ASSEMBLY //",
                        style: TextStyle(color: const Color(0xFFACCFBA), fontSize: 10, letterSpacing: 1.5, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30,),

              _spellHeadings(heading: "CANTRIPS"),

              _spellCards(
                name: "Mending",
                school: "Transmutation",
                actionType: "Action",
                description: "Repair a single break or tear in an object you touch, such as a broken chain link or a leaking wineskin.",
                modifier: "None",
                damage: "None",
                range: "Touch",
                duration: "Instant",
                color: Color(0xFFACCFBA)
              ),
              _spellCards(
                name: "Firebolt",
                school: "Evocation",
                actionType: "Action",
                description: "Hurl a mote of fire at a creature or object within range. A flammable object hit by this spell ignites.",
                modifier: "None",
                damage: "2D10 Fire",
                range: "120ft",
                duration: "Instant",
                color: Color(0xFFACCFBA)
              ),

              SizedBox(height: 25,),
              _spellHeadings(heading: "1ST LEVEL"),

              _spellCards(
                name: "Shield",
                school: "Abjuration",
                actionType: "Reaction",
                description: "An invisible barrier of magical force appears and protects you. Until the start of your next turn, you have a +5 bonus to AC.",
                modifier: "None",
                damage: "None",
                range: "Self",
                duration: "Instant",
                color: Color(0xFFFFB77C)
              ),

              _spellCards(
                name: "Grease",
                school: "Conjuration",
                actionType: "Action",
                description: "Slick grease covers the ground in a 10-footsquare. It becomes difficult terrain and creatures must make a Dex save.",
                modifier: "None",
                damage: "None",
                range: "60ft, 10ft sq",
                duration: "Instant",
                color: Color(0xFFFFB77C)
              ),

              SizedBox(height: 25,),
              _spellHeadings(heading: "2ND LEVEL"),

              _spellCards(
                name: "Scorching Ray",
                school: "Evocation",
                actionType: "Action",
                description: "You create three rays of fire and hurl them at targets within range. You can hurl them at one target or several.",
                modifier: "None",
                damage: "2d6 (x3)",
                range: "120ft",
                duration: "Instant",
                color: Color(0xFF8BA9FF)
              ),

              SizedBox(height: 40,)
              ]
            )
          ),
      )
      
    );
  }
}

Widget _spellHeadings ({required String heading}) {
  return Row(
    children: [
      Text(
        heading.toUpperCase(),
        style: TextStyle(
          color: Color(0xFFACCFBA),
          fontSize: 24
        ),
      ),

      SizedBox(width: 15,),

      Expanded(
        child: Divider(
          color: const Color(0xFFACCFBA),
          thickness: 2, 
        )
      )
    ],
  );
}

Widget _spellCards ({required String name, required String school, required String actionType, required String description, required String modifier, required String range, required String duration, required String damage, required Color color}) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      border: Border(left: BorderSide(color: color, width: 5)),
      color: Color(0xFF1A1A1A),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )
                ),

                Text(
                  school,
                  style: TextStyle(
                    color: color,
                    fontSize: 18,
                  )
                )
              ]
            ),

            Expanded(
              child: SizedBox(width: 0,)
            ),

            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2)
              ),
              child: Text(
                actionType,
                style: TextStyle(
                  color: Color(0xFFACCFBA),
                  fontWeight: FontWeight.bold
                )
              )
            )
          ]
        ),

        SizedBox(height: 14),

        Text(
          description,
          style: TextStyle(
            color: Colors.white,
          )
        ),

        SizedBox(height: 14),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Color(0xFF131313)
                ),
                child: Column(
                  children: [
                    Text(
                      "Range:",
                      style: TextStyle(
                        color: color
                      )
                    ),
                    Text(
                      range,
                      style: TextStyle(
                        color: Colors.white
                      )
                    )
                  ],
                )
              ),
            ),
            
            SizedBox(width: 5),
            
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Color(0xFF131313)
                ),
                child: Column(
                  children: [
                    Text(
                      "Duraition:",
                      style: TextStyle(
                        color: color
                      )
                    ),
                    Text(
                      duration,
                      style: TextStyle(
                        color: Colors.white
                      )
                    )
                  ],
                )
              ),
            ),

            SizedBox(width: 5),
            
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Color(0xFF131313)
                ),
                child: Column(
                  children: [
                    Text(
                      "Damage:",
                      style: TextStyle(
                        color: color
                      )
                    ),
                    Text(
                      damage,
                      style: TextStyle(
                        color: Colors.white
                      )
                    )
                  ],
                )
              ),
            )
          ],
        )
      ],
    )
  );
}