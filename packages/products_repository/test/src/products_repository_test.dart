// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:products_repository/products_repository.dart';

void main() {
  group('ProductsRepository', () {
    test('can be instantiated', () {
      expect(ProductsRepository(), isNotNull);
    });
  });
}
