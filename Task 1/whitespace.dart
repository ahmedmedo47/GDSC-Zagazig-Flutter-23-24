import 'dart:io';

void main() {
  stdout.write("Enter The Text: ");
  String stringWithWhitespace =  stdin.readLineSync()!;
  String stringWithoutWhitespace = stringWithWhitespace.replaceAll(' ', '');
  print("Original string: $stringWithWhitespace");
  print("String without whitespace: $stringWithoutWhitespace");
}
