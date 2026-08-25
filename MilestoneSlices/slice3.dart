enum AbilityType{
    strength,
    dexterity,
    constitution,
    intelligence,
    wisdom,
    charisma;

    String get shortName => name.substring(0, 3).toUpperCase(); 
}

enum ProficiencyLevel{
  none(0),
  half(0.5),
  proficient(1),
  expertice(2);

  final double multiplier;
  const ProficiencyLevel(this.multiplier);
}

enum Skill{
  acrobatics(AbilityType.dexterity),
  animalHandling(AbilityType.wisdom),
  acrana(AbilityType.intelligence),
  atheletics(AbilityType.strength),
  deception(AbilityType.charisma),
  history(AbilityType.intelligence),
  insight(AbilityType.wisdom),
  intimidation(AbilityType.charisma),
  investigation(AbilityType.intelligence),
  medicine(AbilityType.wisdom),
  nature(AbilityType.intelligence),
  perception(AbilityType.wisdom),
  performance(AbilityType.charisma),
  persuasion(AbilityType.charisma),
  religion(AbilityType.intelligence),
  sleightOfHand(AbilityType.dexterity),
  stealth(AbilityType.dexterity),
  survival(AbilityType.wisdom);

  final AbilityType baseAbility;
  const Skill(this.baseAbility);
}

class CharacterAttributes{
    int strength = 0;
    int dexterity = 0;
    int constitution = 0;
    int wisdom = 0;
    int intelligence = 0;
    int charisma = 0;

    CharacterAttributes(this.strength, this.dexterity, this.constitution, this.intelligence, this.wisdom, this.charisma){}

    int _calculateMod(int score){
        return ((score - 10)/2).floor();
    }

    int get strMod => _calculateMod(strength);
    int get dexMod => _calculateMod(dexterity);
    int get conMod => _calculateMod(constitution);
    int get intMod => _calculateMod(intelligence);
    int get wisMod => _calculateMod(wisdom);
    int get chaMod => _calculateMod(charisma);
}

int calculateProficiencyBonus(int level){
  int bonus = ((level + 7)/4).floor();
  return bonus;
}

int calculateSkillBonus(int abilityMod,  int profBon, ProficiencyLevel prof){
  int bonus = (abilityMod + (profBon * prof.multiplier)).floor();
  return bonus;
}

void main() {
  CharacterAttributes piet = CharacterAttributes(12, 12, 12, 12, 12, 12);

  // print(calculateProficiencyBonus(10));
  print(calculateProficiencyBonus(12));
  print(piet.chaMod);
  // print(calculateProficiencyBonus(14));

  print(calculateSkillBonus(piet.chaMod, calculateProficiencyBonus(12), ProficiencyLevel.expertice));
}