/* 
  Encapsulation is one of the important concepts of object-oriented programming. Before learning about 
  dart encapsulation, you should have a basic understanding of the class and object in dart.In Dart, 
  Encapsulation means hiding data within a library, preventing it from outside factors. It helps you 
  control your program and prevent it from becoming too complicated.

  How To Achieve Encapsulation In Dart?
    Declaring the class properties as private by using underscore(_).
    Providing public getter and setter methods to access and update the value of private property.

  Getter and Setter Methods
    Getter and setter methods are used to access and update the value of private property.
    Getter methods are used to access the value of private property. 
    Setter methods are used to update the value of private property.
*/

class Employee {
  //private
  int _id;
  int _salary;
  String _email;

  //public
  String? name;
  String? branch;
  String? position;
  String? subject;

  Employee(this.name, this.branch, this.position, this.subject, this._id,
      this._salary, this._email);

  //Getters

  // Getter method to access private property _id
  int getId() {
    return this._id;
  }

  // Getter method to access private property _salary
  int getSalary() {
    return this._salary;
  }

  // Getter method to access private property _email
  String get email => this._email; // Different approach using get keyword

  //Setters

  // Setter method to update private property _id
  void setId(int id) {
    this._id = id;
  }

  // Setter method to update private property _salary
  void setSalary(int salary) {
    this._salary = salary;
  }

  // Setter method to update private property _email
  // Different approach using set keyword
  set email(String email) => this._email = email;
}

void main() {
  Employee e1 = Employee(
      "Jinu", "CSE", "Advisor", "DBMS", 100, 20000, "jinumon@gmail.com");
  Employee e2 = Employee(
      "Sangeetha", "CSE", "HOD", "TOC", 130, 50000, "sangeetha@gmail.com");
  Employee e3 =
      Employee("Jincy", "CSE", "Teacher", "OS", 105, 15000, "jincy@gmail.com");
  Employee e4 =
      Employee("Jishnu", "CY", "Teacher", "SS", 100, 20000, "jishnu@gmail.com");
  Employee e5 = Employee(
      "Binoy", "CSE", "Assistant", "Lab", 100, 20000, "binoy@gmail.com");

  e1.setId(150);
  e1.setSalary(5000);
  e2.setId(100);

  e3.email = "jincy123@gmail.com";

  print("EMPLOYEE Details\nid\tname\tbranch\tsubject\tsalary\temail");
  print(
      "${e1.getId()}\t${e1.name}\t${e1.branch}\t${e1.subject}\t${e1.getSalary()}\t${e1.email}");
  print(
      "${e2.getId()}\t${e2.name}\t${e2.branch}\t${e2.subject}\t${e2.getSalary()}\t${e2.email}");
  print(
      "${e3.getId()}\t${e3.name}\t${e3.branch}\t${e3.subject}\t${e3.getSalary()}\t${e3.email}");
}
