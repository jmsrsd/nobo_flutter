import '../../home/home_presenter.dart';

import '../../../common/repository.dart';
import '../../../common/use_case/browsing_use_case.dart';
import '../note_repository.dart';

class NoteBrowsingUseCase extends BrowsingUseCase<String> {
  @override
  Repository get repository => NoteRepository();

  @override
  String transform(String data) {
    return data;
  }

  @override
  Future<void> execute() async {
    await HomePresenter().setState((state) async {
      await super.execute();

      return state;
    });
  }
}
