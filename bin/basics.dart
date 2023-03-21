import 'dart:io';

void main() {
  //Data Types in Dart

  //initialization
  int a = 50;
  double b = 1.2;
  String str1 = 'hello';
  List<int> l1 = [1, 2, -3, 4, 1, -6, 5];
  List<double> l2 = [1.1, 2.4, 3, 4];
  Set<int> s1 = {1, 2, 3, 4, 1, 2, 5, 6, 5}; //wont take same elements
  Map<int, String> m1 = {1: 'h', 2: 'hai', 3: 'What are'}; //key-value pair

  //Input and Output

  //integer
  stdout.write("Enter an integer:");
  var num1 = int.parse(stdin.readLineSync()!);
  print("You entered integer $num1");

  //decimal
  stdout.write("Enter a decimal:");
  var num2 = double.parse(stdin.readLineSync()!);
  print("You entered decimal $num2");

  //list
  var li = [];
  print("Enter a list\nEnter 5 values into the list");
  for (int i = 0; i < 5; i++) {
    stdout.write('Number $i:');
    li.add(int.parse(stdin.readLineSync()!));
  }
  print(li);

  //set
  var set1 = <int>{}; // OR var set1 = Set();
  print("Enter a set\nEnter 5 values into the set");
  for (int i = 0; i < 5; i++) {
    stdout.write('Number $i:');
    set1.add(int.parse(stdin.readLineSync()!));
  }
  print(set1);

  //map (automatic key)
  var map1 = Map();
  print("Enter 5 values into the map");
  for (int i = 0; i < 5; i++) {
    stdout.write('Number $i:');
    map1[i] = (int.parse(stdin.readLineSync()!));
  }
  print(map1);

  //map (key-value)
  var map2 = Map();
  print("Enter 5 key value pair into the map");
  for (int i = 0; i < 5; i++) {
    stdout.write('key:');
    var key = int.parse(stdin.readLineSync()!);
    stdout.write('value:');
    var value = stdin.readLineSync()!;
    map2[key] = value;
  }
  print(map2);

  //const and final

  /*
    const means that the value is known at compile-time and cannot be changed. 
    ie; its constant form the moment we declare a const variable 
    so it cant be declared, it should be initialized with some value
    it remains constant during compile time, but can change during run time

    On the other hand, final means that the variable is immutable after being set. 
    Once a final variable has been assigned a value, it cannot be changed.
    it remains constant during compile time as well as run time
    either assign it on compile time once or run time once

    mutable - can modify. for example a list is mutable, can add,remove,replace etc
    immutable - cannot modify once its created
  */
  final String name;

  name = 'This is Final';
  // name = 'Hello'; cannot reuse since name is final

  const constant = 10;
  // const a; - throws an error
}

//Loops and control statements - same as c and c++
