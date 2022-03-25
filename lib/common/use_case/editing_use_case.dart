import 'package:rxdart/rxdart.dart';

import '../repository.dart';

abstract class EditingUseCase<T> {
  Repository get repository;

  String transform(T data);

  final result = BehaviorSubject();

  Future<void> execute({
    String? id,
    required T data,
  }) async {
    if (id == null) return;

    await repository.open().then((connection) async {
      await connection.put(id, transform(data));

      result.add(result.valueOrNull);
    });
  }
}
