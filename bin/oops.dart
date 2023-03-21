void main() {
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
