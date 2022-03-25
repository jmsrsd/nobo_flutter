import 'package:rxdart/rxdart.dart';

class Update {
  final state = BehaviorSubject<int>.seeded(0);

  int get count => state.valueOrNull ?? 0;

  bool get loading => count > 0;

  ValueStream<int> get stream => state.stream;

  Future<void> execute(Future<void> Function() process) async {
    state.add(count + 1);

    await process();

    state.add(count - 1);
  }
}
