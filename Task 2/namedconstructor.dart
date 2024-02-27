class Rectangle {
  int width;
  int height;

  Rectangle(this.width, this.height);

  Rectangle.square(int side)
      : width = side,
        height = side;

  Rectangle.customDimensions(int customWidth, int customHeight)
      : width = customWidth,
        height = customHeight;

  int calculateArea() {
    return width * height;
  }
}

void main() {
  var square = Rectangle.square(5);
  print('Area of square: ${square.calculateArea()}');

  var customRect = Rectangle.customDimensions(3, 7);
  print('Area of rectangle: ${customRect.calculateArea()}');
}
