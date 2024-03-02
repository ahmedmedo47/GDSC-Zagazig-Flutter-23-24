import 'dart:io';

class Laptop {
  String brand;
  String model;
  int ram;
  double basePrice;

  Laptop(this.brand, this.model, this.ram, this.basePrice);

  double calculatePrice() {
    double price = basePrice;

    switch (brand) {
      case 'Apple':
        price *= 1.5;
        break;
      case 'Dell':
        price *= 1.2;
        break;
      case 'HP':
        price *= 1.1;
        break;
      default:
        price *= 1.0;
    }

    if (model.contains('Gaming')) {
      price *= 1.3;
    }

    if (ram >= 16) {
      price += 200;
    } else if (ram >= 8) {
      price += 100;
    }
    return price;
  }
}

void main() {
  print("Welcome to the Laptop Shop System!");

  print("Enter brand:");
  String brand = stdin.readLineSync()!;

  print("Enter model:");
  String model = stdin.readLineSync()!;

  print("Enter RAM (GB):");
  int ram = int.parse(stdin.readLineSync()!);

  double basePrice = 1000.0;

  Laptop laptop = Laptop(brand, model, ram, basePrice);

  double price = laptop.calculatePrice();
  print("The price of the laptop is: \$$price");
}
