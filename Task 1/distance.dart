import 'dart:io';

void main() {
  stdout.write("Enter the distance from home to office in kilometers: ");
  double distance =
      double.parse(stdin.readLineSync()!); 
stdout.write("Enter the Speed : ");
  double speed = double.parse(stdin.readLineSync()!); 

  double timeInHours = distance / speed;
  double timeInMinutes = timeInHours * 60; 

  print(
      "Time taken to reach the office: ${timeInMinutes.toStringAsFixed(2)} minutes");
}
