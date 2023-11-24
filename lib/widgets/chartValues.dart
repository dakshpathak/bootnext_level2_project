import 'package:collection/collection.dart';

class Price {
  final double x;
  final double y;

  Price({required this.x, required this.y});
}

List<Price> get priceData {
  final data = <double>[2, 4, 6, 10, 8, 9, 50];

  return data
      .mapIndexed(
          (index, element) => Price(x: index.toDouble(), y: index.toDouble()))
      .toList();
}
