import 'update.dart';

class Controller {
  static final _instances = <Type, Controller>{};

  static Controller of<T>() {
    return _instances[T] ??= Controller._();
  }

  Controller._();

  final update = Update();
}
