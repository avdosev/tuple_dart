/// Represents a 2-tuple
class Tuple2<T1, T2> {
  final T1 item1;
  final T2 item2;

  const Tuple2(this.item1, this.item2);

  Tuple2<E, T2> withItem1<E>(E newItem) => Tuple2(newItem, item2);
  Tuple2<T1, E> withItem2<E>(E newItem) => Tuple2(item1, newItem);


  @override
  String toString() => '($item1, $item2)';

  @override
  bool operator ==(Object other) =>
      other is Tuple2 &&
      other.item1 == item1 &&
      other.item2 == item2;
}


/// Represents a 3-tuple
class Tuple3<T1, T2, T3> {
  final T1 item1;
  final T2 item2;
  final T3 item3;

  const Tuple3(this.item1, this.item2, this.item3);

  Tuple3<E, T2, T3> withItem1<E>(E newItem) => Tuple3(newItem, item2, item3);
  Tuple3<T1, E, T3> withItem2<E>(E newItem) => Tuple3(item1, newItem, item3);
  Tuple3<T1, T2, E> withItem3<E>(E newItem) => Tuple3(item1, item2, newItem);


  @override
  String toString() => '($item1, $item2, $item3)';

  @override
  bool operator ==(Object other) =>
      other is Tuple3 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3;
}


/// Represents a 4-tuple
class Tuple4<T1, T2, T3, T4> {
  final T1 item1;
  final T2 item2;
  final T3 item3;
  final T4 item4;

  const Tuple4(this.item1, this.item2, this.item3, this.item4);

  Tuple4<E, T2, T3, T4> withItem1<E>(E newItem) => Tuple4(newItem, item2, item3, item4);
  Tuple4<T1, E, T3, T4> withItem2<E>(E newItem) => Tuple4(item1, newItem, item3, item4);
  Tuple4<T1, T2, E, T4> withItem3<E>(E newItem) => Tuple4(item1, item2, newItem, item4);
  Tuple4<T1, T2, T3, E> withItem4<E>(E newItem) => Tuple4(item1, item2, item3, newItem);


  @override
  String toString() => '($item1, $item2, $item3, $item4)';

  @override
  bool operator ==(Object other) =>
      other is Tuple4 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4;
}


/// Represents a 5-tuple
class Tuple5<T1, T2, T3, T4, T5> {
  final T1 item1;
  final T2 item2;
  final T3 item3;
  final T4 item4;
  final T5 item5;

  const Tuple5(this.item1, this.item2, this.item3, this.item4, this.item5);

  Tuple5<E, T2, T3, T4, T5> withItem1<E>(E newItem) => Tuple5(newItem, item2, item3, item4, item5);
  Tuple5<T1, E, T3, T4, T5> withItem2<E>(E newItem) => Tuple5(item1, newItem, item3, item4, item5);
  Tuple5<T1, T2, E, T4, T5> withItem3<E>(E newItem) => Tuple5(item1, item2, newItem, item4, item5);
  Tuple5<T1, T2, T3, E, T5> withItem4<E>(E newItem) => Tuple5(item1, item2, item3, newItem, item5);
  Tuple5<T1, T2, T3, T4, E> withItem5<E>(E newItem) => Tuple5(item1, item2, item3, item4, newItem);


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
}


/// Represents a 6-tuple
class Tuple6<T1, T2, T3, T4, T5, T6> {
  final T1 item1;
  final T2 item2;
  final T3 item3;
  final T4 item4;
  final T5 item5;
  final T6 item6;

  const Tuple6(this.item1, this.item2, this.item3, this.item4, this.item5, this.item6);

  Tuple6<E, T2, T3, T4, T5, T6> withItem1<E>(E newItem) => Tuple6(newItem, item2, item3, item4, item5, item6);
  Tuple6<T1, E, T3, T4, T5, T6> withItem2<E>(E newItem) => Tuple6(item1, newItem, item3, item4, item5, item6);
  Tuple6<T1, T2, E, T4, T5, T6> withItem3<E>(E newItem) => Tuple6(item1, item2, newItem, item4, item5, item6);
  Tuple6<T1, T2, T3, E, T5, T6> withItem4<E>(E newItem) => Tuple6(item1, item2, item3, newItem, item5, item6);
  Tuple6<T1, T2, T3, T4, E, T6> withItem5<E>(E newItem) => Tuple6(item1, item2, item3, item4, newItem, item6);
  Tuple6<T1, T2, T3, T4, T5, E> withItem6<E>(E newItem) => Tuple6(item1, item2, item3, item4, item5, newItem);


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

  const Tuple7(this.item1, this.item2, this.item3, this.item4, this.item5, this.item6, this.item7);

  Tuple7<E, T2, T3, T4, T5, T6, T7> withItem1<E>(E newItem) => Tuple7(newItem, item2, item3, item4, item5, item6, item7);
  Tuple7<T1, E, T3, T4, T5, T6, T7> withItem2<E>(E newItem) => Tuple7(item1, newItem, item3, item4, item5, item6, item7);
  Tuple7<T1, T2, E, T4, T5, T6, T7> withItem3<E>(E newItem) => Tuple7(item1, item2, newItem, item4, item5, item6, item7);
  Tuple7<T1, T2, T3, E, T5, T6, T7> withItem4<E>(E newItem) => Tuple7(item1, item2, item3, newItem, item5, item6, item7);
  Tuple7<T1, T2, T3, T4, E, T6, T7> withItem5<E>(E newItem) => Tuple7(item1, item2, item3, item4, newItem, item6, item7);
  Tuple7<T1, T2, T3, T4, T5, E, T7> withItem6<E>(E newItem) => Tuple7(item1, item2, item3, item4, item5, newItem, item7);
  Tuple7<T1, T2, T3, T4, T5, T6, E> withItem7<E>(E newItem) => Tuple7(item1, item2, item3, item4, item5, item6, newItem);


  @override
  String toString() => '($item1, $item2, $item3, $item4, $item5, $item6, $item7)';

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
}



