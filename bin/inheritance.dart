/*
  Single Inheritance: In this type of inheritance, a derived class inherits from a single base class.
  This is the most common type of inheritance.

  Multi-level Inheritance: In this type of inheritance, a derived class is created from a base class,
  which itself is derived from another base class.

  Hierarchical Inheritance: In this type of inheritance, multiple derived classes inherit from a single
  base class.

  Mixin Inheritance: In this type of inheritance, a class can inherit the properties and methods of
  multiple classes. Unlike other types of inheritance, mixin inheritance doesn't create a parent-child
  relationship between the classes involved.
*/

class Animal {
  String? color;
  String? breed;
  String? animal;

  Animal(this.animal, this.color, this.breed);
}

// Eat is the child and Animal is parent
// single inheritance
class Eat extends Animal {
  Eat(String color, String breed, String animal) : super(color, breed, animal);
  //whenever we create instances using constructors we need to use the above method to use parent
  //variables for the child class

  void eat() {
    print("The $animal of breed $breed and color $color is eating");
  }
}

//multiple inheritance - class eat extends animal and walk extends eat
class Walk extends Eat {
  Walk(String color, String breed, String animal) : super(color, breed, animal);

  void walking() {
    print("The $animal of breed $breed and color $color is walking");
  }

  /*
    incase we want to use a function with same name as that of parent class but different functionality
    we can use @override to use that function within the child class
    once we call the override fn with the instance of child class it will work normally
    When you use the override keyword, you are explicitly telling the Dart compiler that you are 
    intentionally overriding a method in the superclass. This allows the compiler to check that the 
    method being overridden actually exists in the superclass and that it has the same signature as 
    the method in the subclass. 
  */

  @override
  void eat() {
    print("The is eating from class walk");
    super.eat(); //now we can  call the eat() of the parent class
  }

  /*
    The super keyword is used to refer to the parent class from within a subclass. It can be used to 
    access the parent class's properties and methods that are not overridden in the subclass.
    The super keyword can be used in two ways:
    1. To call the parent class's constructor, using super() within the constructor of a subclass.
    2. To access a property or method in the parent class, using super.propertyName or super.methodName().
  */
}

//hierarchical inheritance = class Eat,Sleep and Run has parent Animal
class Sleep extends Animal {
  Sleep(String color, String breed, String animal)
      : super(color, breed, animal);

  void sleeping() {
    print("The $animal of breed $breed and color $color is sleeping");
  }
}

class Run extends Animal {
  Run(String color, String breed, String animal) : super(color, breed, animal);

  void running() {
    print("The $animal of breed $breed and color $color is running");
  }
}

//data abstraction

/*
  Abstraction is a mechanism for hiding implementation details and exposing only the necessary information 
  or functionality to the user. In Dart, abstraction is achieved through abstract classes and methods.
  An abstract class is a class that cannot be instantiated(objects cannot be created) but can be subclassed.
  It can contain abstract methods, which are declared but not implemented in the abstract class. Any subclass of an abstract class
  must implement all the abstract methods declared in the superclass, or it too must be declared abstract.

  abstract classes can only be used to extend functionality
*/

abstract class Shape {
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print("Drawing a circle");
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print("Drawing a rectangle");
  }
}

//mixin interface

mixin Flying {
  void fly() {
    print('I am flying!');
  }
}

mixin Jumping {
  void jump() {
    print('I am jumping!');
  }
}

mixin Riding {
  void ride() {
    print('I am riding!');
  }
}

class Bird with Flying, Jumping, Riding {
  String name;
  Bird(this.name);
}

void main() {
  print('\n');
  Eat a = Eat("dog", "white", "lab");
  a.eat(); //single inheritance

  print('\n');
  Walk d = Walk("dog", "brown", "poodle");
  d.eat(); //multilevel inheritance
  d.walking();
  d.eat(); //override fn

  print('\n');
  //hierarchical inheritance
  Sleep s = Sleep("cat", "orange", "persian");
  s.sleeping();

  Run r = Run("cow", "white", "farm");
  r.running();

  print('\n');
  //abstraction
  Circle c = Circle();
  Rectangle r1 = Rectangle();
  c.draw();
  r1.draw();

  /*
    In this example, Shape is an abstract class with an abstract method draw(). The Circle and Rectangle 
    classes implement the Shape interface by providing their own implementation of the draw() method using 
    the override keyword. This way, we can ensure that any class implementing the Shape interface will 
    have a draw() method.

    We always use abstract classes to declare functions and later define those functions in separate classes

    Abstraction is an important concept in object-oriented programming because it allows you to focus on the
    behavior of an object rather than its implementation details. In the case of the Shape abstract class, 
    it defines the draw() method, which is an essential behavior of any shape. By declaring the draw() 
    method in the abstract class, we are indicating that any concrete class that extends the Shape class 
    must provide an implementation of the draw() method.

    The concrete classes, Circle and Rectangle, provide their own implementation of the draw() method, which
    is specific to their shapes. However, the user of the Circle or Rectangle object does not need to know 
    how the draw() method is implemented. All they need to know is that the object is a Shape and that it 
    has a draw() method. This is the essence of abstraction - it hides the implementation details of an 
    object and provides a simple interface that can be used by other code.

    In short, abstraction helps to reduce complexity by focusing on the essential behavior of an object and 
    hiding the implementation details.
  */

  //mixin
  print('\n');
  Bird b = Bird("sparrow");
  b.fly();
  b.jump();
  b.ride();
}
