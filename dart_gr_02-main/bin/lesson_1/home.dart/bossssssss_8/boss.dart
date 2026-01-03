import 'game_character.dart';
import 'super_ability.dart';
import 'rpg_game.dart';
import 'heros.dart';

class Boss extends GameCharacter {
  SuperAbility? defence;

  Boss(super.health, super.damage, super.name);

  void chooseDefence() {
    List<SuperAbility> variants = SuperAbility.values;
    int randomIndex = RpgGame.random.nextInt(variants.length); // 0,1,2,3
    defence = variants[randomIndex];
  }

  void attack(List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive()) {
        if (hero is Berserk && defence != hero.ability) {
          int block = (RpgGame.random.nextInt(2) + 1) * 5; // 5 or 10
          hero.blockedDamage = block;
          hero.health -= (damage - block);
        } else {
          hero.health -= damage;
        }
      }
    }
  }

  @override
  String toString() {
    return 'BOSS ${super.toString()} defence: ${defence == null ? "No defence" : defence!.name}';
  }
}
