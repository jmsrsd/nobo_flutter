import 'package:rxdart/rxdart.dart';

import '../repository.dart';

abstract class ReadingUseCase<T> {
  Repository get repository;

  T transform(String data);

  final result = BehaviorSubject<T>();

  Future<void> execute({String? id}) async {
    if (id == null) return;

    await repository.open().then((connection) async {
      result.add(transform(connection.get(id) ?? ''));
    });
  }
}
