import 'dart:math';

class Car {
  int _maxFuel = 100;
  int fuel = 100;
  int _fuelPrice = 10;
  int money = 10000;
  Car() {
    this.money = money;
    this.fuel = fuel;
    this._fuelPrice = _fuelPrice;
    this._maxFuel = _maxFuel;
  }
  void refilling() {
    this.money -= this._fuelPrice * (this._maxFuel - this.fuel);
    this.fuel = this._maxFuel;
  }

  void status() {
    print('You have $money money and $fuel fuel.');
  }
}

class Truck extends Car {
  int _fuelkm = 2;
  int moneykm = 30;
  Truck() {
    super.money -= 4000;
    this._fuelkm = _fuelkm;
    this.moneykm = moneykm;
  }
  void ride() {
    if (super.fuel >= this._fuelkm * 10) {
      super.fuel -= this._fuelkm * 10;
      int min = 10;
      int max = 40;
      Random r = new Random();
      this.moneykm = min + r.nextInt(max - min);
      super.money += 10 * this.moneykm;
    } else {
      print('You have only $fuel fuel, please refilling your car(type ref)');
    }
  }
}

class Racing extends Car {
  int _fuelkm = 4;
  int moneykm = 70;
  Racing() {
    super.money -= 6000;
    this._fuelkm = _fuelkm;
    this.moneykm = moneykm;
  }
  void ride() {
    if (super.fuel >= this._fuelkm * 10) {
      super.fuel -= this._fuelkm * 10;
      int min = 10;
      int max = 90;
      Random r = new Random();
      this.moneykm = min + r.nextInt(max - min);
      super.money += 10 * this.moneykm;
    } else {
      print('You have only $fuel fuel, please refilling your car(type ref).');
    }
  }
}
