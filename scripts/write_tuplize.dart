import 'dart:io';

Future<void> fncDcl() async {
  final f = File('lib/src/func_decl.dart');
  final file = f.openWrite();
  for (var i = 0; i <= 8; i++) {
    file.write(makeFuncDeclCode(i));
  }
  await file.flush();
  await file.close();
}

Future<void> tplz() async {
  final f = File('lib/src/tuplize.dart');
  final file = f.openWrite();
  file.writeln("import 'tuple.dart';");
  file.writeln("import 'func_decl.dart';");
  file.writeln();
  for (var i = 1; i <= 8; i++) {
    file.writeln(makeTupleCode(i));
  }
  await file.flush();
  await file.close();
}

void main(List<String> args) async {
  await Future.wait([fncDcl(), tplz()]);
}

String makeFuncDeclCode(int length) {
  return """
typedef Func$length<R${List.generate(length, (index) => ', T${index + 1}').join()}> = R Function(${List.generate(length, (index) => 'T${index + 1}').join(', ')});
""";
}

String makeTupleCode(int length) {
  final types = List.generate(length, (index) => 'T${index + 1}').join(', ');
  final sep_types = List.generate(length, (index) => ', T${index + 1}').join();
  final types_arg =
      List.generate(length, (index) => 'T${index + 1} p$index').join(', ');
  final args = List.generate(length, (index) => 'p$index').join(', ');
  return """
/// extension providing tuplize transformation
/// ```
/// R Function(T1...TN) -> R Function(Tuple<T1...TN>);
/// ```
extension Tuplize$length<R$sep_types> on Func$length<R$sep_types> {
  /// get tupled function
  Func1<R, Tuple$length<$types>> get tuplized => (Tuple$length<$types> tuple) => tuple.apply(this); 
}

/// extension providing detuplize transformation
/// ```
/// R Function(Tuple<T1...TN>) -> R Function(T1...TN);
/// ```
extension Detuplize$length<R$sep_types> on Func1<R, Tuple$length<$types>> {
  /// get detupled function
  Func$length<R$sep_types> get detuplized => ($args) => this.call(Tuple$length($args)); 
}
""";
}
