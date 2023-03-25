/*
  In Dart, an exception is a way of signaling that an error or exceptional condition has occurred during 
  program execution. Exceptions are objects that are thrown and caught by the program at runtime. If an 
  exception is not caught, it will propagate up the call stack until it reaches the top-level error 
  handler, which will terminate the program.
*/

// Error handling using custom class that implements abstract class Exception
class InvalidPhoneNumberException implements Exception {}

bool? ValidatePhoneNumber(String ph) {
  if (ph == 10) {
    return true;
  } else
    throw InvalidPhoneNumberException();
}

void main() {
  try {
    final valid_ph = ValidatePhoneNumber('567');
  } catch (e) {
    print(e);
  } // here we are directly catching an instance e of the exception InvalidPhoneNumberException

  try {
    final valid_ph = ValidatePhoneNumber('567');
  } on InvalidPhoneNumberException catch (_) //here we are only catching invalid phone number
  {
    print('Invalid Phone Number');
  } // here we are directly catching the exception and print InvalidPhoneNumber

  // we can continue catching multiple exceptions using the on keyword
  // on InvalidPhoneNumberException catch (_) //here we are only catching invalid phone number
  //   {
  //     print('Invalid Phone Number');
  //   }

  catch (e) {
    print(e);
  } // this will handle any exception other than invalid phone number exception
  //we can use this method when we know what exception will occur

  //other methods
  print("\nSimply using try-catch block");
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print('Error: $e');
  }

  print("\nSimply using on clause");
  try {
    int result = 10 ~/ 0;
    print(result);
  } on UnsupportedError catch (e) {
    print('Error: $e');
  }

/*
  finally: The finally block is used to specify code that should be executed regardless of whether an 
  exception is thrown or not. The code in the finally block is executed after the code in the try or catch 
  block has finished executing. This is useful for releasing resources (such as file handles, network 
  sockets, etc.) that were acquired in the try block.
*/

  print("\nSimply using finally block");
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Done!');
  }

  print("\nUsing Rethrow");
  try {
    divide(10, 0);
  } catch (e) {
    print('Caught in main: $e');
  }
}

/*
  rethrow: When a catch block catches an exception and then rethrows it, the exception is propagated to 
  the next enclosing catch block, if any. This allows multiple catch blocks to handle the same exception 
  in different ways. The rethrow keyword is used to rethrow an exception from within a catch block.
*/

//rethrow function
void divide(int a, int b) {
  try {
    int result = a ~/ b;
    print(result);
  } catch (e) {
    print('Caught in divide: $e');
    rethrow;
  }
}
