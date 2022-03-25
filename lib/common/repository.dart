import 'package:hive_flutter/hive_flutter.dart';

abstract class Repository {
  String get name;

  Future<Box<String>> open() async {
    return await Hive.openBox<String>(name);
  }
}
