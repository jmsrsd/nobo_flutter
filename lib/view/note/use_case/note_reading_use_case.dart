import '../detail/note_detail_presenter.dart';

import '../../../common/repository.dart';
import '../../../common/use_case/reading_use_case.dart';
import '../../home/home_presenter.dart';
import '../note_presenter.dart';
import '../note_repository.dart';

class NoteReadingUseCase extends ReadingUseCase<String> {
  @override
  Repository get repository => NoteRepository();

  @override
  String transform(String data) {
    return data;
  }

  @override
  Future<void> execute({String? id}) async {
    await HomePresenter().setState((state) async {
      await NoteDetailPresenter().setState((state) async {
        await super.execute(id: id);
        return state;
      });

      await NotePresenter().browsing.execute();

      return state;
    });
  }
}
