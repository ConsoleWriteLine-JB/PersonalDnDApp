enum AbilityType{
    strength,
    dexterity,
    constitution,
    wisdom,
    intelligence,
    charisma;

    String get shortName => name.substring(0, 3).toUpperCase(); 
}

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

void main(){
    CharacterAttributes Piet = CharacterAttributes(12, 10, 8, 2, 20, 30);
    print(Piet.intMod);
}