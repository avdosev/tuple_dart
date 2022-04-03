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
  // or equal
  print2.tuplized(tuple); // output: "first 2";
  // also R Function(Tuple<T1...TN>) has detuplized getter

  // tuplize transformation
  // R Function(T1...TN) -> R Function(Tuple<T1...TN>);
  // final print2tuplized = print2.tuplized;

  // detuplized transformation
  // R Function(Tuple<T1...TN>) -> R Function(T1...TN);
  // final print2detupled = print2tuplized.detuplized;

  // compatible with MapEntry
  final tuples = [
    Tuple2('1', 111),
    Tuple2('2', 222),
    Tuple2('3', 333),
    Tuple2('4', 444),
  ];

  print(Map<String, int>.fromEntries(tuples));
}
