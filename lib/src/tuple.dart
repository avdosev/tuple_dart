/// Represents a 1-tuple
class Tuple1<T1> {
  final T1 item1;

  const Tuple1(this.item1);

  /// Returns a tuple with the item1 set to the specified value.
  Tuple1<E> withItem1<E>(E newItem) => Tuple1(newItem);

  /// apply a function `f` over tuple fields
  R apply<R>(R Function(T1) f) {
    return f(item1);
  }

  Iterable get iterable sync* {
    yield item1;
  }

  List toList({bool growable = false}) =>
      List.from(iterable, growable: growable);

  @override
  String toString() => '($item1)';

  @override
  bool operator ==(Object other) => other is Tuple1 && other.item1 == item1;

  @override
  int get hashCode => item1.hashCode;
}

/// Represents a 2-tuple
class Tuple2<T1, T2> {
  final T1 item1;
  final T2 item2;

  const Tuple2(this.item1, this.item2);

  /// Returns a tuple with the item1 set to the specified value.
  Tuple2<E, T2> withItem1<E>(E newItem) => Tuple2(newItem, item2);

  /// Returns a tuple with the item2 set to the specified value.
  Tuple2<T1, E> withItem2<E>(E newItem) => Tuple2(item1, newItem);

  /// apply a function `f` over tuple fields
  R apply<R>(R Function(T1, T2) f) {
    return f(item1, item2);
  }

  Iterable get iterable sync* {
    yield item1;
    yield item2;
  }

  List toList({bool growable = false}) =>
      List.from(iterable, growable: growable);

  @override
  String toString() => '($item1, $item2)';

  @override
  bool operator ==(Object other) =>
      other is Tuple2 && other.item1 == item1 && other.item2 == item2;

  @override
  int get hashCode => Object.hash(item1, item2);
}

/// Represents a 3-tuple
class Tuple3<T1, T2, T3> {
  final T1 item1;
  final T2 item2;
  final T3 item3;

  const Tuple3(this.item1, this.item2, this.item3);

  /// Returns a tuple with the item1 set to the specified value.
  Tuple3<E, T2, T3> withItem1<E>(E newItem) => Tuple3(newItem, item2, item3);

  /// Returns a tuple with the item2 set to the specified value.
  Tuple3<T1, E, T3> withItem2<E>(E newItem) => Tuple3(item1, newItem, item3);

  /// Returns a tuple with the item3 set to the specified value.
  Tuple3<T1, T2, E> withItem3<E>(E newItem) => Tuple3(item1, item2, newItem);

  /// apply a function `f` over tuple fields
  R apply<R>(R Function(T1, T2, T3) f) {
    return f(item1, item2, item3);
  }

  Iterable get iterable sync* {
    yield item1;
    yield item2;
    yield item3;
  }

  List toList({bool growable = false}) =>
      List.from(iterable, growable: growable);

  @override
  String toString() => '($item1, $item2, $item3)';

  @override
  bool operator ==(Object other) =>
      other is Tuple3 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3;

  @override
  int get hashCode => Object.hash(item1, item2, item3);
}

/// Represents a 4-tuple
class Tuple4<T1, T2, T3, T4> {
  final T1 item1;
  final T2 item2;
  final T3 item3;
  final T4 item4;

  const Tuple4(this.item1, this.item2, this.item3, this.item4);

  /// Returns a tuple with the item1 set to the specified value.
  Tuple4<E, T2, T3, T4> withItem1<E>(E newItem) =>
      Tuple4(newItem, item2, item3, item4);

  /// Returns a tuple with the item2 set to the specified value.
  Tuple4<T1, E, T3, T4> withItem2<E>(E newItem) =>
      Tuple4(item1, newItem, item3, item4);

  /// Returns a tuple with the item3 set to the specified value.
  Tuple4<T1, T2, E, T4> withItem3<E>(E newItem) =>
      Tuple4(item1, item2, newItem, item4);

  /// Returns a tuple with the item4 set to the specified value.
  Tuple4<T1, T2, T3, E> withItem4<E>(E newItem) =>
      Tuple4(item1, item2, item3, newItem);

  /// apply a function `f` over tuple fields
  R apply<R>(R Function(T1, T2, T3, T4) f) {
    return f(item1, item2, item3, item4);
  }

  Iterable get iterable sync* {
    yield item1;
    yield item2;
    yield item3;
    yield item4;
  }

  List toList({bool growable = false}) =>
      List.from(iterable, growable: growable);

  @override
  String toString() => '($item1, $item2, $item3, $item4)';

  @override
  bool operator ==(Object other) =>
      other is Tuple4 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4;

  @override
  int get hashCode => Object.hash(item1, item2, item3, item4);
}

/// Represents a 5-tuple
class Tuple5<T1, T2, T3, T4, T5> {
  final T1 item1;
  final T2 item2;
  final T3 item3;
  final T4 item4;
  final T5 item5;

  const Tuple5(this.item1, this.item2, this.item3, this.item4, this.item5);

  /// Returns a tuple with the item1 set to the specified value.
  Tuple5<E, T2, T3, T4, T5> withItem1<E>(E newItem) =>
      Tuple5(newItem, item2, item3, item4, item5);

  /// Returns a tuple with the item2 set to the specified value.
  Tuple5<T1, E, T3, T4, T5> withItem2<E>(E newItem) =>
      Tuple5(item1, newItem, item3, item4, item5);

  /// Returns a tuple with the item3 set to the specified value.
  Tuple5<T1, T2, E, T4, T5> withItem3<E>(E newItem) =>
      Tuple5(item1, item2, newItem, item4, item5);

  /// Returns a tuple with the item4 set to the specified value.
  Tuple5<T1, T2, T3, E, T5> withItem4<E>(E newItem) =>
      Tuple5(item1, item2, item3, newItem, item5);

  /// Returns a tuple with the item5 set to the specified value.
  Tuple5<T1, T2, T3, T4, E> withItem5<E>(E newItem) =>
      Tuple5(item1, item2, item3, item4, newItem);

  /// apply a function `f` over tuple fields
  R apply<R>(R Function(T1, T2, T3, T4, T5) f) {
    return f(item1, item2, item3, item4, item5);
  }

  Iterable get iterable sync* {
    yield item1;
    yield item2;
    yield item3;
    yield item4;
    yield item5;
  }

  List toList({bool growable = false}) =>
      List.from(iterable, growable: growable);

  @override
  String toString() => '($item1, $item2, $item3, $item4, $item5)';

  @override
  bool operator ==(Object other) =>
      other is Tuple5 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4 &&
      other.item5 == item5;

  @override
  int get hashCode => Object.hash(item1, item2, item3, item4, item5);
}

/// Represents a 6-tuple
class Tuple6<T1, T2, T3, T4, T5, T6> {
  final T1 item1;
  final T2 item2;
  final T3 item3;
  final T4 item4;
  final T5 item5;
  final T6 item6;

  const Tuple6(
      this.item1, this.item2, this.item3, this.item4, this.item5, this.item6);

  /// Returns a tuple with the item1 set to the specified value.
  Tuple6<E, T2, T3, T4, T5, T6> withItem1<E>(E newItem) =>
      Tuple6(newItem, item2, item3, item4, item5, item6);

  /// Returns a tuple with the item2 set to the specified value.
  Tuple6<T1, E, T3, T4, T5, T6> withItem2<E>(E newItem) =>
      Tuple6(item1, newItem, item3, item4, item5, item6);

  /// Returns a tuple with the item3 set to the specified value.
  Tuple6<T1, T2, E, T4, T5, T6> withItem3<E>(E newItem) =>
      Tuple6(item1, item2, newItem, item4, item5, item6);

  /// Returns a tuple with the item4 set to the specified value.
  Tuple6<T1, T2, T3, E, T5, T6> withItem4<E>(E newItem) =>
      Tuple6(item1, item2, item3, newItem, item5, item6);

  /// Returns a tuple with the item5 set to the specified value.
  Tuple6<T1, T2, T3, T4, E, T6> withItem5<E>(E newItem) =>
      Tuple6(item1, item2, item3, item4, newItem, item6);

  /// Returns a tuple with the item6 set to the specified value.
  Tuple6<T1, T2, T3, T4, T5, E> withItem6<E>(E newItem) =>
      Tuple6(item1, item2, item3, item4, item5, newItem);

  /// apply a function `f` over tuple fields
  R apply<R>(R Function(T1, T2, T3, T4, T5, T6) f) {
    return f(item1, item2, item3, item4, item5, item6);
  }

  Iterable get iterable sync* {
    yield item1;
    yield item2;
    yield item3;
    yield item4;
    yield item5;
    yield item6;
  }

  List toList({bool growable = false}) =>
      List.from(iterable, growable: growable);

  @override
  String toString() => '($item1, $item2, $item3, $item4, $item5, $item6)';

  @override
  bool operator ==(Object other) =>
      other is Tuple6 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4 &&
      other.item5 == item5 &&
      other.item6 == item6;

  @override
  int get hashCode => Object.hash(item1, item2, item3, item4, item5, item6);
}

/// Represents a 7-tuple
class Tuple7<T1, T2, T3, T4, T5, T6, T7> {
  final T1 item1;
  final T2 item2;
  final T3 item3;
  final T4 item4;
  final T5 item5;
  final T6 item6;
  final T7 item7;

  const Tuple7(this.item1, this.item2, this.item3, this.item4, this.item5,
      this.item6, this.item7);

  /// Returns a tuple with the item1 set to the specified value.
  Tuple7<E, T2, T3, T4, T5, T6, T7> withItem1<E>(E newItem) =>
      Tuple7(newItem, item2, item3, item4, item5, item6, item7);

  /// Returns a tuple with the item2 set to the specified value.
  Tuple7<T1, E, T3, T4, T5, T6, T7> withItem2<E>(E newItem) =>
      Tuple7(item1, newItem, item3, item4, item5, item6, item7);

  /// Returns a tuple with the item3 set to the specified value.
  Tuple7<T1, T2, E, T4, T5, T6, T7> withItem3<E>(E newItem) =>
      Tuple7(item1, item2, newItem, item4, item5, item6, item7);

  /// Returns a tuple with the item4 set to the specified value.
  Tuple7<T1, T2, T3, E, T5, T6, T7> withItem4<E>(E newItem) =>
      Tuple7(item1, item2, item3, newItem, item5, item6, item7);

  /// Returns a tuple with the item5 set to the specified value.
  Tuple7<T1, T2, T3, T4, E, T6, T7> withItem5<E>(E newItem) =>
      Tuple7(item1, item2, item3, item4, newItem, item6, item7);

  /// Returns a tuple with the item6 set to the specified value.
  Tuple7<T1, T2, T3, T4, T5, E, T7> withItem6<E>(E newItem) =>
      Tuple7(item1, item2, item3, item4, item5, newItem, item7);

  /// Returns a tuple with the item7 set to the specified value.
  Tuple7<T1, T2, T3, T4, T5, T6, E> withItem7<E>(E newItem) =>
      Tuple7(item1, item2, item3, item4, item5, item6, newItem);

  /// apply a function `f` over tuple fields
  R apply<R>(R Function(T1, T2, T3, T4, T5, T6, T7) f) {
    return f(item1, item2, item3, item4, item5, item6, item7);
  }

  Iterable get iterable sync* {
    yield item1;
    yield item2;
    yield item3;
    yield item4;
    yield item5;
    yield item6;
    yield item7;
  }

  List toList({bool growable = false}) =>
      List.from(iterable, growable: growable);

  @override
  String toString() =>
      '($item1, $item2, $item3, $item4, $item5, $item6, $item7)';

  @override
  bool operator ==(Object other) =>
      other is Tuple7 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4 &&
      other.item5 == item5 &&
      other.item6 == item6 &&
      other.item7 == item7;

  @override
  int get hashCode =>
      Object.hash(item1, item2, item3, item4, item5, item6, item7);
}

/// Represents a 8-tuple
class Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> {
  final T1 item1;
  final T2 item2;
  final T3 item3;
  final T4 item4;
  final T5 item5;
  final T6 item6;
  final T7 item7;
  final T8 item8;

  const Tuple8(this.item1, this.item2, this.item3, this.item4, this.item5,
      this.item6, this.item7, this.item8);

  /// Returns a tuple with the item1 set to the specified value.
  Tuple8<E, T2, T3, T4, T5, T6, T7, T8> withItem1<E>(E newItem) =>
      Tuple8(newItem, item2, item3, item4, item5, item6, item7, item8);

  /// Returns a tuple with the item2 set to the specified value.
  Tuple8<T1, E, T3, T4, T5, T6, T7, T8> withItem2<E>(E newItem) =>
      Tuple8(item1, newItem, item3, item4, item5, item6, item7, item8);

  /// Returns a tuple with the item3 set to the specified value.
  Tuple8<T1, T2, E, T4, T5, T6, T7, T8> withItem3<E>(E newItem) =>
      Tuple8(item1, item2, newItem, item4, item5, item6, item7, item8);

  /// Returns a tuple with the item4 set to the specified value.
  Tuple8<T1, T2, T3, E, T5, T6, T7, T8> withItem4<E>(E newItem) =>
      Tuple8(item1, item2, item3, newItem, item5, item6, item7, item8);

  /// Returns a tuple with the item5 set to the specified value.
  Tuple8<T1, T2, T3, T4, E, T6, T7, T8> withItem5<E>(E newItem) =>
      Tuple8(item1, item2, item3, item4, newItem, item6, item7, item8);

  /// Returns a tuple with the item6 set to the specified value.
  Tuple8<T1, T2, T3, T4, T5, E, T7, T8> withItem6<E>(E newItem) =>
      Tuple8(item1, item2, item3, item4, item5, newItem, item7, item8);

  /// Returns a tuple with the item7 set to the specified value.
  Tuple8<T1, T2, T3, T4, T5, T6, E, T8> withItem7<E>(E newItem) =>
      Tuple8(item1, item2, item3, item4, item5, item6, newItem, item8);

  /// Returns a tuple with the item8 set to the specified value.
  Tuple8<T1, T2, T3, T4, T5, T6, T7, E> withItem8<E>(E newItem) =>
      Tuple8(item1, item2, item3, item4, item5, item6, item7, newItem);

  /// apply a function `f` over tuple fields
  R apply<R>(R Function(T1, T2, T3, T4, T5, T6, T7, T8) f) {
    return f(item1, item2, item3, item4, item5, item6, item7, item8);
  }

  Iterable get iterable sync* {
    yield item1;
    yield item2;
    yield item3;
    yield item4;
    yield item5;
    yield item6;
    yield item7;
    yield item8;
  }

  List toList({bool growable = false}) =>
      List.from(iterable, growable: growable);

  @override
  String toString() =>
      '($item1, $item2, $item3, $item4, $item5, $item6, $item7, $item8)';

  @override
  bool operator ==(Object other) =>
      other is Tuple8 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4 &&
      other.item5 == item5 &&
      other.item6 == item6 &&
      other.item7 == item7 &&
      other.item8 == item8;

  @override
  int get hashCode =>
      Object.hash(item1, item2, item3, item4, item5, item6, item7, item8);
}
