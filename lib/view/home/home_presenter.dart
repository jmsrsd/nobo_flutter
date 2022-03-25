import '../../../common/controller.dart';
import '../../../common/presenter.dart';
import '../note/note_presenter.dart';
import 'home_view.dart';

class HomePresenter extends Presenter<HomePresenter> {
  HomePresenter._();

  factory HomePresenter() => HomePresenter._().singleton as HomePresenter;

  @override
  Controller get controller => Controller.of<HomeView>();

  @override
  HomePresenter initialState() => this;

  Future<void> onRefresh() async {
    await HomePresenter().setState((state) async {
      await Future.delayed(const Duration(seconds: 3));
      return state;
    });
  }

  void onFloatingActionButtonPressed() {
    NotePresenter().editing.execute(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          data: '',
        );
  }
}
