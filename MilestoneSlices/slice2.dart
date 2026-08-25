int points = 27;
Map<int, int> pointTable = {
  8: 0,
  9: 1,
  10: 2,
  11: 3,
  12: 4,
  13: 5,
  14: 7,
  15: 9 
};

class CharacterAttributes{
    int strength = 0;
    int dexterity = 0;
    int constitution = 0;
    int wisdom = 0;
    int intelligence = 0;
    int charisma = 0;

    CharacterAttributes(this.strength, this.dexterity, this.constitution, this.intelligence, this.wisdom, this.charisma){}

    int _calculateMod(score){
        return ((score - 10)/2).floor();
    }

    int get strMod => _calculateMod(strength);
    int get dexMod => _calculateMod(dexterity);
    int get conMod => _calculateMod(constitution);
    int get intMod => _calculateMod(intelligence);
    int get wisMod => _calculateMod(wisdom);
    int get chaMod => _calculateMod(charisma);
}

int costForScore(int score){
  int? cost = pointTable[score];

  if (cost == null || cost > 15) {
    throw ArgumentError('Invalid ability score for Point Buy: $score. Must be between 8 and 15.');
  }

  return cost;
}

int calculateTotalCost(CharacterAttributes attr){
  int cost = 0;

  cost += costForScore(attr.strength);
  cost += costForScore(attr.dexterity);
  cost += costForScore(attr.constitution);
  cost += costForScore(attr.intelligence);
  cost += costForScore(attr.wisdom);
  cost += costForScore(attr.charisma);

  return cost;
}

bool isBuildValid(CharacterAttributes attr){
  int cost = calculateTotalCost(attr);

  if(cost > 27 || cost < 0){
    return false;
  } else {
    return true;
  }
}

void main(){
  CharacterAttributes piet = CharacterAttributes(12, 15, 14, 8, 12, 10);

  print(costForScore(12));
  print(calculateTotalCost(piet));
  print(isBuildValid(piet));
}