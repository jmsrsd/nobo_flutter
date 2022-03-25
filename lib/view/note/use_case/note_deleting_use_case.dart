import '../../../common/repository.dart';
import '../../../common/use_case/deleting_use_case.dart';
import '../note_repository.dart';

import '../../home/home_presenter.dart';
import '../note_presenter.dart';

class NoteDeletingUseCase extends DeletingUseCase {
  @override
  Repository get repository => NoteRepository();

  @override
  Future<void> execute({
    required String id,
  }) async {
    await HomePresenter().setState((state) async {
      await super.execute(id: id);
      await NotePresenter().browsing.execute();

      return state;
    });
  }
}
