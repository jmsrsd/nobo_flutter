import 'dart:convert';

import '../app_presenter.dart';
import '../app_repository.dart';
import '../../common/repository.dart';
import '../../common/use_case/reading_use_case.dart';

import '../model/app_model.dart';

class AppReadingUseCase extends ReadingUseCase<AppModel> {
  @override
  Repository get repository => AppRepository();

  @override
  AppModel transform(String data) {
    try {
      return AppModel.fromJson(jsonDecode(data));
    } catch (e) {
      return AppModel();
    }
  }

  @override
  Future<void> execute({String? id}) async {
    await AppPresenter().setState((state) async {
      await super.execute(id: 'singleton');
      return result.valueOrNull ?? AppPresenter().initialState();
    });
  }
}
