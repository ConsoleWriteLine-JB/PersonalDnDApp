import 'package:flutter/material.dart';

class StatTab extends StatelessWidget {

  const StatTab({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
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
                        "MECHANICAL\nLEDGER",
                        style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w900, height: 1.1, letterSpacing: 2.0),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "SUBJECT: ARTIFICER GNOME //\nREGISTRY: QUIVER //",
                        style: TextStyle(color: const Color(0xFFACCFBA), fontSize: 10, letterSpacing: 1.5, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),

              Row(
                children: const [
                  Icon(Icons.shield, color: Color(0xFFFFB77C), size: 24),
                  SizedBox(width: 12),
                  Text("CHASSIS INTEGRITY", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800, letterSpacing: 1.5)),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: _darkCard("Armour Class", "18")),
                  const SizedBox(width: 5),
                  Expanded(child: _darkCard("Movement Speed", "30ft")),
                ],
              ),
              const SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(color: Color(0xFF161616)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("STRUCTURAL INTEGRITY [HP]", style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1.0)),
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
                    Container(height: 12, color: const Color(0xFFFFB77C)),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0XFF0E0E0E),
                  border: Border.all(color: const Color.fromARGB(255, 24, 24, 24)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Hardened Circuits (Saves)", style: TextStyle(fontSize: 18, color: Color(0XffACCFBA))),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildSaveBox("STR", "+5", isProficient: true),
                        const SizedBox(width: 10),
                        _buildSaveBox("DEX", "+1"),
                        const SizedBox(width: 10),
                        _buildSaveBox("CON", "+3"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildSaveBox("INT", "+5"),
                        const SizedBox(width: 10),
                        _buildSaveBox("WIS", "+0"),
                        const SizedBox(width: 10),
                        _buildSaveBox("CHA", "-2"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              _buildAbilityBlock(
                  title: "Strength",
                  score: "12",
                  modifier: "+1",
                  skills: [
                    _buildSkillRow("Athletics", "+5", isProficient: true)
                  ]
                ),

                _buildAbilityBlock(
                  title: "Dexterity",
                  score: "14",
                  modifier: "+2",
                  skills: [
                    _buildSkillRow("Acrobatics", "+2", isProficient: false),
                    _buildSkillRow("Sleight of Hand", "+2", isProficient: false),
                    _buildSkillRow("Stealth", "+2", isProficient: false),
                  ]
                ),

                 _buildAbilityBlock(
                  title: "Constitution",
                  score: "18",
                  modifier: "+4",
                  skills: []
                ),

                 _buildAbilityBlock(
                  title: "Intelligence",
                  score: "20",
                  modifier: "+5",
                  skills: [
                    _buildSkillRow("Arcana", "+9", isProficient: true),
                    _buildSkillRow("History", "+5", isProficient: false),
                    _buildSkillRow("Investigation", "+9", isProficient: true),
                    _buildSkillRow("Nature", "+5", isProficient: false),
                    _buildSkillRow("Religion", "+5", isProficient: false),
                  ]
                ),

                 _buildAbilityBlock(
                  title: "Wisdom",
                  score: "16",
                  modifier: "+3",
                  skills: [
                    _buildSkillRow("Animal Handling", "+3", isProficient: false),
                    _buildSkillRow("Insight", "+3", isProficient: false),
                    _buildSkillRow("Medicine", "+3", isProficient: false),
                    _buildSkillRow("Perception", "+7", isProficient: true),
                    _buildSkillRow("Survival", "+3", isProficient: false),
                  ]
                ),

                 _buildAbilityBlock(
                  title: "Charisma",
                  score: "8",
                  modifier: "-1",
                  skills: [
                    _buildSkillRow("Deception", "-1", isProficient: false),
                    _buildSkillRow("Intimidation", "-1", isProficient: false),
                    _buildSkillRow("Performance", "-1", isProficient: false),
                    _buildSkillRow("Persuasion", "-1", isProficient: false),
                  ]
                ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _darkCard(String title, String value, {Color valueColor = Colors.white}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(color: const Color(0xFF161616), borderRadius: BorderRadius.circular(4)),
      child: Column(
        children: [
          Text(title, style: const TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1.5)),
          const SizedBox(height: 8),
          Text(value, style: TextStyle(color: valueColor, fontSize: 40, fontWeight: FontWeight.w900, height: 1.0)),
        ],
      ),
    );
  }

  Widget _buildSaveBox(String title, String value, {bool isProficient = false}) {
    return Expanded(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: isProficient ? const Color.fromARGB(117, 255, 183, 124) : Colors.transparent,
          border: Border.all(color: const Color.fromARGB(255, 24, 24, 24)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: TextStyle(color: isProficient ? const Color(0XFFFFB77C) : Colors.grey)),
            const SizedBox(height: 4),
            Text(value, style: TextStyle(color: isProficient ? const Color(0XFFFFB77C) : Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget _buildAbilityBlock({required String title, required String score, required String modifier, required List<Widget> skills}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(color: const Color(0xFF161616), borderRadius: BorderRadius.circular(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(color: Color(0xFF1E1E1E), borderRadius: BorderRadius.vertical(top: Radius.circular(4))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title.toUpperCase(), style: const TextStyle(color: Color(0xFFACCFBA), fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 1.5)),
                Row(
                  children: [
                    Text(score, style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w900)),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(color: const Color(0xFF8C5A2A), borderRadius: BorderRadius.circular(4)),
                      child: Text(modifier, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: skills),
          )
        ],
      ),
    );
  }

  Widget _buildSkillRow(String skillName, String modifier, {bool isProficient = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(width: 6, height: 6, decoration: BoxDecoration(color: isProficient ? const Color(0xFFFFB77C) : const Color(0xFF424242))),
              const SizedBox(width: 12),
              Text(skillName.toUpperCase(), style: TextStyle(color: isProficient ? Colors.white : Colors.grey, fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1.0)),
            ],
          ),
          Text(modifier, style: TextStyle(color: isProficient ? Colors.white : Colors.grey, fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}