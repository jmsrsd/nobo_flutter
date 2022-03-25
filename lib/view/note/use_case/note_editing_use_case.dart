import '../../../common/repository.dart';
import '../../../common/use_case/editing_use_case.dart';
import '../../home/home_presenter.dart';
import '../note_presenter.dart';
import '../note_repository.dart';

class NoteEditingUseCase extends EditingUseCase<String> {
  @override
  Repository get repository => NoteRepository();

  @override
  String transform(String data) {
    return data;
  }

  @override
  Future<void> execute({
    String? id,
    required String data,
  }) async {
    await HomePresenter().setState((state) async {
      await super.execute(id: id, data: data);
      await NotePresenter().browsing.execute();

      return state;
    });
  }
}
