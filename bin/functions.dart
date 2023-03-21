void main() {
  // Types Of Functions

  // basic functions

  sum(); // no return or parameters

  diff(8, 1); // with parameters, no return

  print(hai()); // with no parameters, only return

  print("Product of 2 and 3: ${mul(2, 3)}"); // with parameters and return

  /* 

    Functions with Optional and required parameters   
    Optional parameters are those parameters that don't need to be specified when calling the function.
    By Default every function has a required parameter value for fn call else we use a variable required

    Optional Parameters are of 2 types 
    Named - {}, any parameters enclosed in {} are named optional parameters.
    even though named is optional, incase of no parameters null is expected,but 
    if we want a value for parameter we need to initialize the value of the parameter within the actual function. 
    It improve code readability and can be omitted or specified in any order when calling a function.
    void printSomething(int a, int b, {int c = 99}){fn body} here c is named and others are required

    Positional - [] , any parameters enclosed in [] are positional optional parameters
    Positional parameters must be specified in the order they are declared in the function signature.
    eg: void printSomething(int a, int b, [ int c = 10] ){function body} here c is positional and others are required

    Order when calling and defining functions fn_name(all required args,all positional arg, all named arg)

  */

  // Optional Parameters
  opt(1); // 1 required argument and other named argument
  opt1(3); // 1 required argument and other named argument but handles null
  opt2(3, 4, 10); // 2 required argument and other 2 positional argument
  opt2(3, 4, 10, 3.2); // 2 required argument and other 2 positional argument
  opt3(5); // 1 required argument and other named argument but with custom value

  int x = 10;
  int y = 12;
  // Required Custom Parameters, so we need the same name for parameters in both fn declaration and fn call
  req1(number1: x, number2: y);
  req1(number1: 3, number2: 4);

  // Advanced Function Concepts
  // fn passed to a fn
  print("Advanced Functions");
  print(fn_within_fn(20, 2, mul));
  //fn_within_fn calls a function mul as an argument along with integers 20 and 2

  //Anonymous Function - a fn without name
  anon_fn(3, 2, (int x, int y) {
    print(x + y);
  });

  /* 
    Future Functions -
    In Dart programming language, a Future represents a means for getting a value sometime in the future.
    When a function that returns a Future is called, two things happen: 
    1) The function queues up work to be done and returns an uncompleted Future. 
    2) Later, when the operation is finished, the Future completes with a value or with an error1.
    You can use .then() method with callback functions or async and await keywords to handle the completion of a Future2. There’s also a static method Future.wait() which you can use to manage multiple Futures3. 
  */

  print("Before Future Fn");
  print(future_fn(3, 4));
  // this will print Instance of 'Future<int>' since the main fn doesn't wait for the function to execute
  // inorder to use await and wait for the future_fn the main should be aync, ie- void main() async{body}
  print("After Future Fn");

  print("Second Future Fn");
  feature_add();
}

void sum() {
  print("I'm Sum function");
}

String hai() {
  return "I'm from hai()";
}

void diff(int a, int b) {
  print("Diff of $a and $b: ${a - b}");
}

int mul(int a, int b) {
  return (a * b);
}

void opt(int x, {int? y}) {
  print("Hey, Am an optional parameter function\nx:$x\ny:$y");
  //this fn is optional named fn with x as required and y as named
}

void opt1(int x, {int y = 0}) {
  print("Sum of $x and $y: ${x + y}");
  //this fn is also optional named fn with x as required and y as named, but here we need to perform operations with the value of y cant be null and needs to be resolved.
}

void opt2(int w, int x, [int? y, double? z]) {
  print(
      "Hey, Am an optional parameter Positional function\nw:$w\nx:$x\ny:$y\nz:$z");
  //this fn is optional fn with w and x as required, y and z as positional
}

void opt3(int x, {int y = 10}) {
  print(
      "Hey, Am an optional parameter function with custom value for optional parameter \nx:$x\ny:$y");
  //this fn is optional named fn with x as required and y as named
}

void req1({required number1, required number2}) {
  print("Sum of $number1 and $number2: ${number1 + number2}");
}

// Advanced concepts in functions

// how to pass a fn to a function

int fn_within_fn(int x, int y, int Function(int, int) cust_fn) {
  return (cust_fn(x, y));
  //the actual function that will get executed is cust_fn which has the body of the passed function mul
}

void anon_fn(int w, int z, void Function(int, int) cust_fn2) {
  print("Anonymous Function\nw:$w\nz:$z");
  cust_fn2(w, z);
}

//Future Fn's

Future<int> future_fn(int a, int b) async {
  await Future.delayed(Duration(seconds: 3));
  print("I'm future function");
  return (a + b);
}

Future<void> feature_add() async {
  print("Within New Feature fn");
  print(await future_fn(10, 2));
  //we used await since the future_fn needs 3sec to start execution
}
