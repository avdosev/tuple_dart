# Tuple dart

A library providing a tuple data structure for Dart. 

* No dependency
* Easy usage
* Support tuple2 - tuple8
* Used by the [itertools](https://pub.dev/packages/itertools) package

## Example

```dart
import 'package:tuple_dart/tuple.dart';
// or import 'package:tuple_dart/tuple_dart.dart';

void print2(Object? first, Object? second) {
  print('$first $second');
}

void main() {
  final tuple = Tuple2('first', 2); // type Tuple2<String, int>
  tuple.apply(print2); // output: "first 2";
  final tuple2 = tuple.withItem2('second'); // type Tuple2<String, String>
  tuple2.apply(print2); // output: "first second";
}

```

## Links

[Pub dev][pubdev]

[Documentation][docs]

[Issue tracker][tracker]

## Usage

```dart
import 'package:tuple_dart/tuple.dart';
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/avdosev/tuple_dart/issues
[pubdev]: https://pub.dev/packages/tuple_dart
[docs]: https://pub.dev/documentation/tuple_dart/latest/