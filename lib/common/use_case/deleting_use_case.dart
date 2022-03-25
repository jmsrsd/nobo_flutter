import 'package:rxdart/rxdart.dart';

import '../repository.dart';

abstract class DeletingUseCase<T> {
  Repository get repository;

  final result = BehaviorSubject();

  Future<void> execute({
    required String id,
  }) async {
    await repository.open().then((connection) async {
      await connection.delete(id);

      result.add(result.valueOrNull);
    });
  }
}
