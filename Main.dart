import 'Classes/Classes.dart';
import 'dart:io';

void main() {
  bool isEnd = false;
  print('What type of car you want? Truck or Racing car?');

  while (true) {
    String choose_car = stdin.readLineSync();

    if (choose_car == 'Truck') {
      Truck mycar = Truck();
      String rreader;
      print('Alright!Command to me(to see all commands type help).');
      while ((mycar.money < 11000) && (mycar.money >= 0)) {
        rreader = stdin.readLineSync();
        switch (rreader) {
          case 'ride':
            mycar.ride();
            break;
          case 'ref':
            mycar.refilling();
            mycar.status();
            break;
          case 'status':
            mycar.status();
            break;
          case 'end':
            isEnd = true;
            break;
          case 'help':
            print('Command list:');
            print(
                'ride - you ride alone on an old abandoned road. By riding you earn money but dismiss fuel(by one command ride you drive 10 km).');
            print(
                'ref - you stop your battered car at the nearest gas station and refuel it(you earn fuel but dismiss money).');
            print('status - you see your money and your fuel.');
            print('end - you end this game.');
            break;
          default:
            print('You send a wrong command(type help, if you need help).');
        }
        if (isEnd) break;
        print('Next?');
      }
      if (isEnd) break;
    }
    if (choose_car == 'Racing car') {
      if (isEnd) break;
      Racing mycar = Racing();
      String rreader;
      print('Alright!Command to me(to see all commands type help).');
      while ((mycar.money < 11000) && (mycar.money >= 0)) {
        rreader = stdin.readLineSync();
        switch (rreader) {
          case 'ride':
            mycar.ride();
            break;
          case 'ref':
            mycar.refilling();
            mycar.status();
            break;
          case 'status':
            mycar.status();
            break;
          case 'end':
            isEnd = true;
            break;
          case 'help':
            print('Command list:');
            print(
                'ride - you ride alone on an old abandoned road. By riding you earn money but dismiss fuel(by one command ride you drive 10 km).');
            print(
                'ref - you stop your battered car at the nearest gas station and refuel it(you earn fuel but dismiss money).');
            print('status - you see your money and your fuel.');
            print('end - you end this game.');
            break;
          default:
            print('You send a wrong command(type help, if you need help).');
        }
        if (isEnd) break;
        print('Next?');
      }
      if (isEnd) break;
    }
    if ((choose_car != 'Truck') && (choose_car != 'Racing car')) {
      print('You must print Truck or Racing car');
    }
    if (isEnd) break;
  }
}
