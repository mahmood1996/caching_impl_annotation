import 'dart:async';

final class GenerateForCaching {
  const GenerateForCaching();
}

typedef FromJson<ReturnType> = FutureOr<ReturnType> Function(dynamic);

final class Get<ReturnType> {
  final String storageKey;
  final FromJson<ReturnType>? fromJson;

  const Get({
    required this.storageKey,
    this.fromJson,
  });
}

typedef ToJson<InputType> = dynamic Function(InputType);

final class Save<InputType> {
  final String storageKey;
  final ToJson<InputType>? toJson;

  const Save({
    required this.storageKey,
    this.toJson,
  });
}
