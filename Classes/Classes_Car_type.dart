import 'dart:math';

class Car {
  int maxFuel = 100;
  int fuel = 100;
  int fuelPrice = 10;
  int money = 10000;
  Car() {
    this.money = money;
    this.fuel = fuel;
    this.fuelPrice = fuelPrice;
    this.maxFuel = maxFuel;
  }
  void refilling() {
    this.money -= this.fuelPrice * (this.maxFuel - this.fuel);
    this.fuel = this.maxFuel;
  }

  void status() {
    print('You have $money money and $fuel fuel.');
  }
}

class Truck extends Car {
  int fuelkm = 2;
  int moneykm = 30;
  Truck() {
    super.money -= 4000;
    this.fuelkm = fuelkm;
    this.moneykm = moneykm;
  }
  void ride() {
    if (super.fuel >= this.fuelkm * 10) {
      super.fuel -= this.fuelkm * 10;
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
  int fuelkm = 4;
  int moneykm = 70;
  Racing() {
    super.money -= 6000;
    this.fuelkm = fuelkm;
    this.moneykm = moneykm;
  }
  void ride() {
    if (super.fuel >= this.fuelkm * 10) {
      super.fuel -= this.fuelkm * 10;
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
