abstract class GameCharacter {
  int _health;
  int damage;
  String name;

  GameCharacter(this._health, this.damage, this.name);

  bool isAlive() {
    return _health > 0;
  }

  get health => _health;

  set health(int value) {
    if (value < 0) {
      _health = 0;
    } else {
      _health = value;
    }
  }

  @override
  String toString() {
    return '$name health: $_health damage: $damage';
  }
}
