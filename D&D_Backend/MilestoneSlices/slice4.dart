import 'dart:math';

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

int RolledD6(){
  int d6 = Random().nextInt(6) + 1;
  return d6;
}

int rolledStat(){
  int one, two, three, four;
  int sum = 0;
  one = RolledD6();
  two = RolledD6();
  three = RolledD6();
  four = RolledD6();

  List<int> stat = [];
  stat.addAll([one, two, three, four]);
  stat.sort();
  stat.removeAt(0);

  for(int i = 0; i <= stat.length -1; i++){
    sum += stat[i];
  }

  return sum;
}

void main(){
  print(RolledD6());
  print(rolledStat());
}