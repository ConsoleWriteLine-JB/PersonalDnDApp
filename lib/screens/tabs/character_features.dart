import 'package:flutter/material.dart';

class FeaturesTab extends StatelessWidget{

  const FeaturesTab({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18),
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
                        "CHARACTER\nFEATURES",
                        style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w900, height: 1.1, letterSpacing: 2.0),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "TECHNICAL SCHEMATICS //",
                        style: TextStyle(color: const Color(0xFFACCFBA), fontSize: 10, letterSpacing: 1.5, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),

              racialTrait('Gnome Cunning', 'You have advantage on all Intelligence, Wisdom, and Charisma saving throws against magic.'),

              classFeature('Magical Tinkering', 'At 1st level, you learn how to invest a spark of magic into mundane objects. To use this ability, you must have thieves’ tools or artisan’s tools in hand. You then touch a Tiny nonmagical object as an action and give it one of the following magical properties of your choice')
            ],
          ),
        ),
      ),
    );
  }
}

Widget racialTrait(String name, String desc) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.all(16),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xFF1A1A1A),
      border: Border(left: BorderSide(
        color: Color(0xFFACCFBA)
      ))
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 0),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(
                  color: Color(0xFFACCFBA)
                ))
              ),
              child: Text(
                name,
                style: TextStyle(
                  color: Color(0xFFACCFBA), 
                  fontSize: 26
                )
              ),
            ),

            Text(
              'Racial Trait',
              style: TextStyle(
                color: Colors.grey
              )
              )
          ],
        ),
        

        SizedBox(height: 15,),

        Text(
          desc,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    )
  );
}

Widget classFeature(String name, String desc) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.all(16),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xFF1A1A1A),
      border: Border(left: BorderSide(
        color: Color(0xFFFFB77C)
      ))
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 0),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(
                  color: Color(0xFFFFB77C)
                ))
              ),
              child: Text(
                name,
                style: TextStyle(
                  color: Color(0xFFFFB77C), 
                  fontSize: 26
                )
              ),
            ),

            Text(
              'Class Feature',
              style: TextStyle(
                color: Colors.grey
              )
              )
          ],
        ),
        

        SizedBox(height: 15,),

        Text(
          desc,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    )
  );
}