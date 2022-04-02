import 'tuple.dart';
import 'func_decl.dart';

/// extension providing tuplize transformation
/// ```
/// R Function(T1...TN) -> R Function(Tuple<T1...TN>);
/// ```
extension Tuplize1<R, T1> on Func1<R, T1> {
  /// get tupled function
  Func1<R, Tuple1<T1>> get tuplized => (Tuple1<T1> tuple) => tuple.apply(this); 
}

/// extension providing detuplize transformation
/// ```
/// R Function(Tuple<T1...TN>) -> R Function(T1...TN);
/// ```
extension Detuplize1<R, T1> on Func1<R, Tuple1<T1>> {
  /// get detupled function
  Func1<R, T1> get detuplized => (p0) => this.call(Tuple1(p0)); 
}

/// extension providing tuplize transformation
/// ```
/// R Function(T1...TN) -> R Function(Tuple<T1...TN>);
/// ```
extension Tuplize2<R, T1, T2> on Func2<R, T1, T2> {
  /// get tupled function
  Func1<R, Tuple2<T1, T2>> get tuplized => (Tuple2<T1, T2> tuple) => tuple.apply(this); 
}

/// extension providing detuplize transformation
/// ```
/// R Function(Tuple<T1...TN>) -> R Function(T1...TN);
/// ```
extension Detuplize2<R, T1, T2> on Func1<R, Tuple2<T1, T2>> {
  /// get detupled function
  Func2<R, T1, T2> get detuplized => (p0, p1) => this.call(Tuple2(p0, p1)); 
}

/// extension providing tuplize transformation
/// ```
/// R Function(T1...TN) -> R Function(Tuple<T1...TN>);
/// ```
extension Tuplize3<R, T1, T2, T3> on Func3<R, T1, T2, T3> {
  /// get tupled function
  Func1<R, Tuple3<T1, T2, T3>> get tuplized => (Tuple3<T1, T2, T3> tuple) => tuple.apply(this); 
}

/// extension providing detuplize transformation
/// ```
/// R Function(Tuple<T1...TN>) -> R Function(T1...TN);
/// ```
extension Detuplize3<R, T1, T2, T3> on Func1<R, Tuple3<T1, T2, T3>> {
  /// get detupled function
  Func3<R, T1, T2, T3> get detuplized => (p0, p1, p2) => this.call(Tuple3(p0, p1, p2)); 
}

/// extension providing tuplize transformation
/// ```
/// R Function(T1...TN) -> R Function(Tuple<T1...TN>);
/// ```
extension Tuplize4<R, T1, T2, T3, T4> on Func4<R, T1, T2, T3, T4> {
  /// get tupled function
  Func1<R, Tuple4<T1, T2, T3, T4>> get tuplized => (Tuple4<T1, T2, T3, T4> tuple) => tuple.apply(this); 
}

/// extension providing detuplize transformation
/// ```
/// R Function(Tuple<T1...TN>) -> R Function(T1...TN);
/// ```
extension Detuplize4<R, T1, T2, T3, T4> on Func1<R, Tuple4<T1, T2, T3, T4>> {
  /// get detupled function
  Func4<R, T1, T2, T3, T4> get detuplized => (p0, p1, p2, p3) => this.call(Tuple4(p0, p1, p2, p3)); 
}

/// extension providing tuplize transformation
/// ```
/// R Function(T1...TN) -> R Function(Tuple<T1...TN>);
/// ```
extension Tuplize5<R, T1, T2, T3, T4, T5> on Func5<R, T1, T2, T3, T4, T5> {
  /// get tupled function
  Func1<R, Tuple5<T1, T2, T3, T4, T5>> get tuplized => (Tuple5<T1, T2, T3, T4, T5> tuple) => tuple.apply(this); 
}

/// extension providing detuplize transformation
/// ```
/// R Function(Tuple<T1...TN>) -> R Function(T1...TN);
/// ```
extension Detuplize5<R, T1, T2, T3, T4, T5> on Func1<R, Tuple5<T1, T2, T3, T4, T5>> {
  /// get detupled function
  Func5<R, T1, T2, T3, T4, T5> get detuplized => (p0, p1, p2, p3, p4) => this.call(Tuple5(p0, p1, p2, p3, p4)); 
}

/// extension providing tuplize transformation
/// ```
/// R Function(T1...TN) -> R Function(Tuple<T1...TN>);
/// ```
extension Tuplize6<R, T1, T2, T3, T4, T5, T6> on Func6<R, T1, T2, T3, T4, T5, T6> {
  /// get tupled function
  Func1<R, Tuple6<T1, T2, T3, T4, T5, T6>> get tuplized => (Tuple6<T1, T2, T3, T4, T5, T6> tuple) => tuple.apply(this); 
}

/// extension providing detuplize transformation
/// ```
/// R Function(Tuple<T1...TN>) -> R Function(T1...TN);
/// ```
extension Detuplize6<R, T1, T2, T3, T4, T5, T6> on Func1<R, Tuple6<T1, T2, T3, T4, T5, T6>> {
  /// get detupled function
  Func6<R, T1, T2, T3, T4, T5, T6> get detuplized => (p0, p1, p2, p3, p4, p5) => this.call(Tuple6(p0, p1, p2, p3, p4, p5)); 
}

/// extension providing tuplize transformation
/// ```
/// R Function(T1...TN) -> R Function(Tuple<T1...TN>);
/// ```
extension Tuplize7<R, T1, T2, T3, T4, T5, T6, T7> on Func7<R, T1, T2, T3, T4, T5, T6, T7> {
  /// get tupled function
  Func1<R, Tuple7<T1, T2, T3, T4, T5, T6, T7>> get tuplized => (Tuple7<T1, T2, T3, T4, T5, T6, T7> tuple) => tuple.apply(this); 
}

/// extension providing detuplize transformation
/// ```
/// R Function(Tuple<T1...TN>) -> R Function(T1...TN);
/// ```
extension Detuplize7<R, T1, T2, T3, T4, T5, T6, T7> on Func1<R, Tuple7<T1, T2, T3, T4, T5, T6, T7>> {
  /// get detupled function
  Func7<R, T1, T2, T3, T4, T5, T6, T7> get detuplized => (p0, p1, p2, p3, p4, p5, p6) => this.call(Tuple7(p0, p1, p2, p3, p4, p5, p6)); 
}

/// extension providing tuplize transformation
/// ```
/// R Function(T1...TN) -> R Function(Tuple<T1...TN>);
/// ```
extension Tuplize8<R, T1, T2, T3, T4, T5, T6, T7, T8> on Func8<R, T1, T2, T3, T4, T5, T6, T7, T8> {
  /// get tupled function
  Func1<R, Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>> get tuplized => (Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> tuple) => tuple.apply(this); 
}

/// extension providing detuplize transformation
/// ```
/// R Function(Tuple<T1...TN>) -> R Function(T1...TN);
/// ```
extension Detuplize8<R, T1, T2, T3, T4, T5, T6, T7, T8> on Func1<R, Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>> {
  /// get detupled function
  Func8<R, T1, T2, T3, T4, T5, T6, T7, T8> get detuplized => (p0, p1, p2, p3, p4, p5, p6, p7) => this.call(Tuple8(p0, p1, p2, p3, p4, p5, p6, p7)); 
}

