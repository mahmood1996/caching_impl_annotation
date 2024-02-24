import 'dart:async';

import 'package:caching_impl_annotation/caching_impl_annotation.dart';
import 'package:test/test.dart';

FutureOr<int> _fromJson(dynamic _) => _;

dynamic _toJson(int value) => value;

void main() {
  group('Caching impl annotation', () {
    test('GenerateForCaching', () {
      expect(GenerateForCaching(), isNotNull);
    });

    test('Get', () {
      const get = Get<int>(
        storageKey: 'key',
        fromJson: _fromJson,
      );

      expect(get.storageKey, 'key');
      expect(get.fromJson!.call(1), 1);
    });

    test('Save', () {
      const save = Save<int>(
        storageKey: 'key',
        toJson: _toJson,
      );

      expect(save.storageKey, 'key');
      expect(save.toJson!.call(1), 1);
    });
  });
}
