import 'dart:io';

String makeTupleCode(int length) {
  final types = Iterable.generate(length, (int i) => 'T${i + 1}').toList();
  final fields = Iterable.generate(length, (int i) => 'item${i + 1}').toList();
  final classFields =
      Iterable.generate(length, (int i) => '  final T${i + 1} item${i + 1};\n')
          .join();

  final withMethods = Iterable.generate(length, (int i) {
    final t = [...types.take(i), 'E', ...types.skip(i + 1)];
    final f = [...fields.take(i), 'newItem', ...fields.skip(i + 1)];
    return """
  /// Returns a tuple with the item${i + 1} set to the specified value.
  Tuple$length<${t.join(', ')}> withItem${i + 1}<E>(E newItem) => Tuple$length(${f.join(', ')});
""";
  });

  return """/// Represents a $length-tuple
class Tuple$length<${types.join(', ')}> {
$classFields
  const Tuple$length(${fields.map((e) => 'this.$e').join(', ')});

${withMethods.join()}
  /// apply a function `f` over tuple fields
  R apply<R>(R Function(${types.join(', ')}) f) {
    return f(${fields.join(', ')});
  }

  Iterable get iterable sync* {
${fields.map((e) => '    yield $e;\n').join()}  }

  List toList({bool growable = false}) => List.from(iterable, growable: growable);

  @override
  String toString() => '(${fields.map((e) => '\$$e').join(', ')})';

  @override
  bool operator ==(Object other) =>
      other is Tuple$length &&
${fields.map((e) => '      other.$e == $e').join(' &&\n')};

  @override
  int get hashCode => Object.hash(${fields.join(', ')});
}
""";
}

void main(List<String> args) async {
  final f = File('lib/src/tuple.dart');
  final file = f.openWrite();
  for (var i = 1; i <= 8; i++) {
    file.write(makeTupleCode(i));
    if (i != 8) file.write('\n');
  }
  await file.flush();
  await file.close();
}
