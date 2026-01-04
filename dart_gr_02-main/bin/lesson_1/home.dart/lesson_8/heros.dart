import 'game_character.dart';
import 'super_ability.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility ability;

  Hero(super.health, super.damage, super.name, this.ability);

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);
}

class Warrior extends Hero {
  Warrior(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.criticalDamage);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    int coeff = RpgGame.random.nextInt(3) + 2; // 2,3,4
    int criticalDamage = damage * coeff;
    boss.health -= criticalDamage;
    print('$name hits critically for $criticalDamage');
  }
}

class Magic extends Hero {
  Magic(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.boosting);

  @override
void applySuperPower(Boss boss, List<Hero> heroes) {
  if (RpgGame.roundNumber <= 4) {
    for (var hero in heroes) {
      if (hero.isAlive() && hero != this) {
        hero.damage += 5;
        }
      }
    print('$name boosted the team!');
    }
  }
}


class Medic extends Hero {
  int healingPoints;

  Medic(int health, int damage, String name, this.healingPoints)
    : super(health, damage, name, SuperAbility.healing);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive() && hero != this) {
        hero.health += healingPoints;
      }
    }
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;
  Berserk(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.blockRevert);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('$name reverted $blockedDamage damage back to Boss');
  }
}

class Golem extends Hero {
  Golem(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.none);
@override
  void applySuperPower(Boss boss, List<Hero> heroes) {} 
}

class Lucky extends Hero {
  Lucky(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.none);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {}
}

class Witcher extends Hero {
  bool hasResurrected = false;
  Witcher(int health, String name)
      : super(health, 0, name, SuperAbility.resurrect);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (!isAlive() || hasResurrected) return;
    for (var hero in heroes) {
      if (!hero.isAlive()) {
        hero.health = health;
        health = 0;
        hasResurrected = true;
        print('Witcher $name sacrificed himself to resurrect ${hero.name}');
      break;
      }
    }
  }
}

class Thor extends Hero {
  Thor(int health, int damage, String name)
      : super(health, damage, name, SuperAbility.stun);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (RpgGame.random.nextBool()) {
      boss.isStunned = true;
      print('Thor $name stunned the boss!');
    }
  }
}


