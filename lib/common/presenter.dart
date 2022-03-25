import 'controller.dart';

abstract class Presenter<T extends Object> {
  static final singletons = <Type, Presenter>{};

  Presenter<T> get singleton => (singletons[T] ??= this) as Presenter<T>;

  Controller get controller;

  T initialState();

  T? nullableState;

  T get state {
    return nullableState ??= initialState();
  }

  Future<void> setState(Future<T> Function(T state) fn) async {
    await controller.update.execute(
      () async => nullableState = await fn(state),
    );
  }
}
