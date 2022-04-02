# Tuple dart

A library providing a tuple data structure for Dart. 

* No dependency
* Easy usage
* Support `tuple1` - `tuple8`
* ideal for using `compute`
* Used by the [itertools](https://pub.dev/packages/itertools) package

## Usage

```dart
import 'package:tuple_dart/tuple.dart';
```
or 
```dart
import 'package:tuple_dart/tuple_dart.dart';
```

## Example

```dart
import 'package:tuple_dart/tuple.dart';

void print2(Object? first, Object? second) {
  print('$first $second');
}

void main() {
  final tuple = Tuple2('first', 2); // type Tuple2<String, int>
  tuple.apply(print2); // output: "first 2";
  final tuple2 = tuple.withItem2('second'); // type Tuple2<String, String>
  tuple2.apply(print2); // output: "first second";
  // or equal
  print2.tuplized(tuple); // output: "first 2";
  // also R Function(Tuple<T1...TN>) has detuplized getter
  
  // tuplize transformation
  // R Function(T1...TN) -> R Function(Tuple<T1...TN>);
  // final print2tuplized = print2.tuplized; 
  
  // detuplized transformation
  // R Function(Tuple<T1...TN>) -> R Function(T1...TN);
  // final print2detupled = print2tuplized.detuplized; 
}

```

### ideal for using compute

```dart
import 'package:tuple_dart/tuple.dart';
import 'package:flutter/foundation.dart';

double hardCalculation(double a, double b, double c) {
  double result = 0.0;
  for (int i = 1; i < 1000; i++) {
    result = i * a + b * c / i;
  }
  return result;
}

void main() async {
  final result = await compute(hardCalculation.tuplized, Tuple3(0.1, 2.0, 10.0));
  print(result);
}
```


## Links

[Pub dev][pubdev]

[Documentation][docs]

[Issue tracker][tracker]

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/avdosev/tuple_dart/issues
[pubdev]: https://pub.dev/packages/tuple_dart
[docs]: https://pub.dev/documentation/tuple_dart/latest/