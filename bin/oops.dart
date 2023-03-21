/*
  Classes And Objects

  Dart is an object-oriented language that supports classes and interfaces. 
  A class is a blueprint for creating objects and encapsulates data for the object. 
  An object represents an instance(multiple objects) of a class. An instance and an object are 
  often used interchangeably. In the context of object-oriented programming (OOP), an object 
  is an instance of a class. A class defines the attributes and behaviors of objects, while an 
  object is a specific representation of that class with its own set of attribute values.

  In Dart, you can define your own classes using the class keyword. You can then create objects 
  from these classes to represent specific instances of that class.

  Object-oriented programming (OOP) is a programming paradigm that uses objects and their 
  interactions to design applications. OOP focuses on representing real-world entities as 
  software objects that have attributes (data) and behaviors (methods). Classes provide a way to 
  define these objects by specifying their attributes and behaviors.

  class represents blueprints for creating objects and objects/instances represents real working 
  copies of that class an object can be anything - a car,person,house. each objects have 
  properties(variables) and behavior(fn)
  Eg: for an object person- properties:skin color,hair color,height,name and behavior walk,speak

  Features of OOP's - classes,objects,polymorphism,abstraction,encapsulation and inheritance

*/

class Person {
  // properties of the class Person
  String? name;
  String? Address;
  int? Age;

  // Behaviors of person
  void define() {
    print("Hi i'm $name of age $Age living at $Address");
  }
}

void main() {
  Person p1 = Person();
  p1.name = 'Suresh';
  p1.Age = 52;
  p1.Address = 'Punalur';
  p1.define();
}
