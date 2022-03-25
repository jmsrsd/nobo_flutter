import '../common/controller.dart';
import '../common/presenter.dart';
import 'app.dart';
import 'model/app_model.dart';
import 'use_case/app_editing_use_case.dart';
import 'use_case/app_reading_use_case.dart';

class AppPresenter extends Presenter<AppModel> {
  AppPresenter._();

  factory AppPresenter() => AppPresenter._().singleton as AppPresenter;

  @override
  Controller get controller => Controller.of<App>();

  @override
  AppModel initialState() => AppModel();

  final reading = AppReadingUseCase();
  final editing = AppEditingUseCase();

  void switchDarkMode() => editing.execute(
        data: state.copyWith(darkMode: !state.darkMode),
      );
}
