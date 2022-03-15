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
