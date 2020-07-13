
// Importing core libraries
import 'dart:math';

// Importing libraries from external packages

// Importing files
import 'fibonacci.dart';
import 'spacecraft.dart';


var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};

int fibonacci(int n){
  if( n == 0 || n == 1 ) return n;
  return fibonacci(n-1) + fibonacci(n-2);
}
var result = fibonacci(20);

/* comments */
// This is a normal, one-line comment.

/// This is a documentation comment, used to document libraries,
/// classes, and their members. Tools like IDEs and dartdoc treat
/// doc comments specially.

/* Comments like these are also supported. */

void main(){

  var voyager = Spacecraft('Voyager I', DateTime(1977,9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();


  print('Hello World, fibonacci 20 is : $result');
  print('Fibonacci(20) : $result');

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (var object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }

  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}