// Interface Bentuk
abstract class Bentuk {
  double getArea();
  double getPerimeter();
}

class Shape {
  String name;
  Shape(this.name);
}

class Circle extends Shape implements Bentuk {
  int radius;
  Circle(String name, this.radius) : super(name);

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }

  @override
  double getPerimeter() {
    return 2 * 3.14 * radius;
  }
}

// Class Square
class Square extends Shape implements Bentuk {
  double side;
  Square(String name, this.side) : super(name);

  @override
  double getArea() {
    return side * side;
  }

  @override
  double getPerimeter() {
    return 4 * side;
  }
}

// Class Rectangle
class Rectangle extends Shape implements Bentuk{
  double length;
  double width;

  Rectangle(String name, this.length, this.width) : super(name);

  @override
  double getArea() {
    return length * width;
  }

  @override
  double getPerimeter() {
    return 2 * (length + width);
  }
}

void main() {
  Circle circle = Circle("Lingkaran", 5);
  Square square = Square("Persegi", 4);
  Rectangle rectangle = Rectangle("Persegi Panjang", 6, 3);

  print('${circle.name}:');
  print('Luas: ${circle.getArea()}');
  print('Keliling: ${circle.getPerimeter()}');
  print('');

  print('${square.name}:');
  print('Luas: ${square.getArea()}');
  print('Keliling: ${square.getPerimeter()}');
  print('');

  print('${rectangle.name}:');
  print('Luas: ${rectangle.getArea()}');
  print('Keliling: ${rectangle.getPerimeter()}');
}