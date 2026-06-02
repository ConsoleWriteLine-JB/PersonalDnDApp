import 'package:flutter/material.dart';

class InventoryTab extends StatelessWidget{

  const InventoryTab({
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
                        "WORKSHOP\nMANIFEST",
                        style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w900, height: 1.1, letterSpacing: 2.0),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "INVENTORY LOG //",
                        style: TextStyle(color: const Color(0xFFACCFBA), fontSize: 10, letterSpacing: 1.5, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 24,),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF1A1A1A)
                ),
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(3),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(2),
                  },
                  children: [
                    TableRow(
                      children: [
                        Text(
                          "ITEM NAME",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        Text(
                          "QTY",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ]
                    ),

                    _buildItemRow("Bag of Holding", "1", "15lb"),
                    _buildItemRow("Shotgun", "1", "25lb"),
                    _buildItemRow("Flail", "2", "18lb")
                  ],
                )
              )

            ],
          ),
        ),
      ),
    );
  }
}

TableRow _buildItemRow(String name, String qty, String weight) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(name, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),),
      ),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(qty, style: const TextStyle(color: Color(0xFFFFB77C), fontSize: 14, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(weight, style: const TextStyle(color: Colors.grey, fontSize: 14), textAlign: TextAlign.right),
      )
    ]
  );
}