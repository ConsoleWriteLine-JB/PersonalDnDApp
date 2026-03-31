class Character {
  final String name;
  final String subtitle;
  final String imagePath;
  final int strength;
  final int intelligence;
  final int dexterity;

  Character({
    required this.name,
    required this.subtitle,
    required this.imagePath,
    required this.strength,
    required this.intelligence,
    required this.dexterity,
  });
}

final List<Character> myRoster = [
  Character(
    name: 'Quiver',
    subtitle: 'Level 11 Gnome Artificer',
    imagePath: 'assets/quiver.jpg', 
    strength: 8,
    intelligence: 20,
    dexterity: 12,
  ),
  Character(
    name: 'Boblin',
    subtitle: 'Level 3 Goblin Rogue',
    imagePath: 'assets/goblin.jpg', 
    strength: 14,
    intelligence: 4,
    dexterity: 20,
  ),
  Character(
    name: 'Rango',
    subtitle: 'Level 20 Frog Ranger',
    imagePath: 'assets/frog.jpg', 
    strength: 20,
    intelligence: 20,
    dexterity: 20,
  ),
];