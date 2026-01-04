import 'game_character.dart';
import 'super_ability.dart';
import 'rpg_game.dart';
import 'heros.dart';

class Boss extends GameCharacter {
  SuperAbility? defence;
  bool isStunned = false;


  Boss(super.health, super.damage, super.name);

  void chooseDefence() {
    List<SuperAbility> variants = SuperAbility.values;
    int randomIndex = RpgGame.random.nextInt(variants.length); // 0,1,2,3
    defence = variants[randomIndex];
  }

  void attack(List<Hero> heroes) {

    Golem? golem;
for (var hero in heroes) {
  if (hero is Golem && hero.isAlive()) {
    golem = hero;
    break;
  }
}
    for (var hero in heroes) {
    if (!hero.isAlive()) continue;

    int damageToHero = damage;
    if (hero is Lucky) {
      if (RpgGame.random.nextInt(100) < 25) {
        print('Lucky ${hero.name} dodged the attack!');
        continue;
      }
    }
    if (hero is Berserk && defence != hero.ability) {
      int block = (RpgGame.random.nextInt(2) + 1) * 5; // 5 or 10
      hero.blockedDamage = block;
      damageToHero -= block;
      if (damageToHero < 0) damageToHero = 0;
    }
if (golem != null && hero != golem) {
  int part = damage ~/ 5;
  golem.health -= part;
  damageToHero -= part;

hero.health -= damageToHero;

      }
    }
  }
  @override
  String toString() {
    return 'BOSS ${super.toString()} defence: ${defence == null ? "No defence" : defence!.name}';
  }
  
}
