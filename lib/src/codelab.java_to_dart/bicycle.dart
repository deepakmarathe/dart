class Bicycle {
  int cadence;
  int _speed = 10;
  int gear;

  int get speed => _speed;

  Bicycle(this.cadence, this.gear);

  @override
  String toString() => 'Bicycle: $speed mph';

  void applyBrake(int decrement){
    _speed -= decrement;
  }
  void speedUp(int increment){
    _speed += increment;
  }
}

void main(List<String> args) {
  var bike = Bicycle(2,1);
  print(bike);
}
