import 'dart:math';

// Question 1
abstract class Shape {
  double calculateArea();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

// Question 2
abstract class Animal {
  String name;
  Animal(this.name);

  void makeSound() {
    print('make animal sound');
  }
}

class Dog extends Animal {
  Dog(super.name);

  @override
  void makeSound() {
    print('gav gav');
  }
}

class Cat extends Animal {
  Cat(super.name);

  @override
  void makeSound() {
    print('myau myau');
  }
}

void main() {
  // 1
  List<Shape> shapes = [
    Rectangle(4, 5),
    Circle(3),
    Rectangle(2, 8),
    Circle(5),
  ];

  for (Shape element in shapes) {
    double area = element.calculateArea();
    print('The area of the shape is: $area');
  }

  // for (int i = 0; i < shapes.length; i++) {
  //   Shape x = shapes[i];
  //   double area = x.calculateArea();
  //   print('The area of shape $i is: $area');
  // }

  // for (int i = 0; i < shapes.length; i++) {
  //   print('The area of shape $i is: ${shapes[i].calculateArea()}');
  // }

  // 2
  List<Animal> animals = [
    Dog('Marta'),
    Cat('Rex'),
    Dog('Simba'),
    Cat('Lisa'),
  ];

  for (Animal element in animals) {
    // here we need FOR IN loop to call makesound(){} method
    element.makeSound();
  }
}
