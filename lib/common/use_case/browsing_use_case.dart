import 'package:rxdart/rxdart.dart';

import '../repository.dart';

abstract class BrowsingUseCase<T> {
  Repository get repository;

  T transform(String data);

  final result = BehaviorSubject<Map<String, T>>.seeded({});

  Future<void> execute() async {
    await repository.open().then((connection) async {
      result.add(
        connection.toMap().map((key, value) {
          return MapEntry('$key', transform(value));
        }),
      );
    });
  }
}
