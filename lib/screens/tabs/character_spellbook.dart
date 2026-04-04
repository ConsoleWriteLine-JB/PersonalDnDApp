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

              //Cantrip Cards

              _spellHeadings(heading: "1ST LEVEL"),

              //1st Level Cards

              _spellHeadings(heading: "2ND LEVEL"),

              //Cards

              _spellHeadings(heading: "3RD LEVEL"),

              //Cards

              _spellHeadings(heading: "4TH LEVEL"),

              //Cards
              
              _spellHeadings(heading: "5TH LEVEL"),

              //Cards

              _spellHeadings(heading: "6TH LEVEL"),

              //Cards

              _spellHeadings(heading: "7TH LEVEL"),

              //Cards

              _spellHeadings(heading: "8TH LEVEL"),

              //Cards

              _spellHeadings(heading: "9TH LEVEL"),

              //Cards
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

/*Widget _spellCards ({required String Name, required String Description, required String Modifier, required Color color}) {
  returns
}
*/