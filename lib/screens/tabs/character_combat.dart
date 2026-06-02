import 'package:flutter/material.dart';

class CombatTab extends StatelessWidget{

  const CombatTab({
    super.key
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
                        "COMBAT MODE",
                        style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.w900, height: 1.1, letterSpacing: 2.0),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "Tactical Overview //",
                        style: TextStyle(color: const Color(0xFFACCFBA), fontSize: 10, letterSpacing: 1.5, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 25,),

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
                              TextSpan(text: "62", style: TextStyle(color: Color(0xFFACCFBA), fontSize: 24, fontWeight: FontWeight.bold)),
                              TextSpan(text: " / 84", style: TextStyle(color: Colors.grey, fontSize: 16)),
                            ]
                          )
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(height: 14, width: double.infinity, decoration: BoxDecoration(color: Color(0xFFACCFBA)))
                        ),
                        Expanded(
                          child: Container(height: 14, width: double.infinity, decoration: BoxDecoration(color: Color(0xFFACCFBA)))
                        ),
                        Expanded(
                          child: Container(height: 14, width: double.infinity, decoration: BoxDecoration(color: Color(0xFFACCFBA)))
                        ),
                        Expanded(
                          child: Container(height: 14, width: double.infinity, decoration: BoxDecoration(color: Color.fromARGB(255, 49, 49, 49)))
                        ),
                      ]
                    ),

                    const SizedBox(height: 18),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          

                          Column(
                            children: [
                              Text(
                                "Armour Class",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),

                              Text(
                                "18",
                                style: TextStyle(
                                  color: Color(0xFFFFB77C),
                                  fontSize: 24
                                )
                              )
                            ]
                          ),

                          SizedBox(width: 0,),

                          Column(
                            children: [
                              Text(
                                "Initiative",
                                style: TextStyle(
                                  color: Colors.white
                                )
                              ),

                              Text(
                                "+2",
                                style: TextStyle(
                                  color: Color(0xFFFFB77C),
                                  fontSize: 24
                                )
                              )
                            ]
                          ),

                          SizedBox(width:0),

                          Column(
                            children: [
                              Text(
                                "Movement",
                                style: TextStyle(
                                  color: Colors.white
                                )
                              ),

                              Text(
                                "30ft",
                                style: TextStyle(
                                  color: Color(0xFFFFB77C),
                                  fontSize: 24
                                )
                              )
                            ]
                          ),
                        ]
                      )
                    ),
                  ],
                ),
              ),

              SizedBox(height: 18,),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(color: Color(0xFF161616)),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.bolt, color: Color(0xFFFFB77C), size: 24),
                          SizedBox(width: 10),
                          Text("ACTIONS", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800, letterSpacing: 1.5)),
                        ],
                      ),

                      SizedBox(height: 16,),

                      _buildActions(
                        actionName: "Dagger",
                        actionDescription1: "+5",
                        actionDescription2: "1D4+1 Slashing"
                      ),

                      SizedBox(height: 8,),

                      _buildActions(
                        actionName: "Wild Magic Bolt",
                        actionDescription1: "+9",
                        actionDescription2: "1D12 Force"
                      ),
                    ]
                  )
                )
              ),

              SizedBox(height: 18,),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(color: Color(0xFF161616)),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.timer, color: Color(0xFFFFB77C), size: 24),
                          SizedBox(width: 10),
                          Text("BONUS ACTIONS", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800, letterSpacing: 1.5)),
                        ],
                      ),

                      SizedBox(height: 16,),

                      _buildActions(
                        actionName: "Defensive Field",
                        actionDescription1: "11 Temp HP",
                        actionDescription2: "5 Charges Remaining"
                      ),
                    ]
                  )
                )
              ), 

              SizedBox(height: 18,),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(color: Color(0xFF161616)),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.reply, color: Color(0xFFFFB77C), size: 24),
                          SizedBox(width: 10),
                          Text("REACTIONS", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800, letterSpacing: 1.5)),
                        ],
                      ),

                      SizedBox(height: 16,),

                      _buildActions(
                        actionName: "Flash of Genius",
                        actionDescription1: "+5 Bonus",
                        actionDescription2: "5 Charges Remaining"
                      ),

                      SizedBox(height: 8,),

                      _buildActions(
                        actionName: "Absorb Elements",
                        actionDescription1: "+1d6 To Next Attack",
                        actionDescription2: "5 Slots Remaining"
                      ),
                    ]
                  )
                )
              ),


              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildActions ({required String actionName, required String actionDescription1, required String actionDescription2}) {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xFF1A1A1A),
      border: BoxBorder.all(color: Color.fromARGB(255, 41, 41, 41))
    ),
    child: Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                actionName,
                style: TextStyle(
                  color: Color(0xFFACCFBA),
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                )
              ),

              Row(
                children: [
                  Text(
                    actionDescription1,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    )
                  ),

                  SizedBox(width: 12),

                  Text(
                    actionDescription2,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    )
                  )
                ]
              )
            ]
          ),

          Icon(Icons.info, color: const Color.fromARGB(255, 77, 76, 76), size: 18),
        ]
      )
    )
  );
}