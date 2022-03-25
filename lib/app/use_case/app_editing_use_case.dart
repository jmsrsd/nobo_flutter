import 'dart:convert';

import '../app_presenter.dart';
import '../app_repository.dart';
import '../../common/repository.dart';

import '../../common/use_case/editing_use_case.dart';
import '../model/app_model.dart';

class AppEditingUseCase extends EditingUseCase<AppModel> {
  @override
  Repository get repository => AppRepository();

  @override
  String transform(AppModel data) {
    return jsonEncode(data.toJson());
  }

  @override
  Future<void> execute({String? id, required AppModel data}) async {
    await AppPresenter().setState((state) async {
      await super.execute(id: 'singleton', data: data);
      return data;
    });
  }
}
