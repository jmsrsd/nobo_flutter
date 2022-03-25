import 'package:flutter/material.dart';

import '../../../common/controller.dart';
import '../../../common/presenter.dart';
import '../home/home_presenter.dart';
import 'detail/note_detail_presenter.dart';
import 'use_case/note_browsing_use_case.dart';
import 'use_case/note_deleting_use_case.dart';
import 'use_case/note_editing_use_case.dart';

class NotePresenter extends Presenter<NotePresenter> {
  NotePresenter._();

  factory NotePresenter() => NotePresenter._().singleton as NotePresenter;

  @override
  Controller get controller => Controller.of();

  @override
  NotePresenter initialState() => this;

  final browsing = NoteBrowsingUseCase();
  final editing = NoteEditingUseCase();
  final deleting = NoteDeletingUseCase();

  void onTap(BuildContext context, {required String id}) {
    HomePresenter().setState((state) async {
      final detail = NoteDetailPresenter();

      await detail.setState((state) async {
        state.id = id;
        return state;
      });

      await detail.reading.execute(id: id);

      detail.navigate(context);

      return state;
    });
  }
}
