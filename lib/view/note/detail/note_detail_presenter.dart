import 'package:flutter/material.dart';
import '../../../common/controller.dart';
import '../../../common/presenter.dart';

import '../use_case/note_reading_use_case.dart';
import 'note_detail_view.dart';

class NoteDetailPresenter extends Presenter<NoteDetailPresenter> {
  NoteDetailPresenter._();

  factory NoteDetailPresenter() =>
      NoteDetailPresenter._().singleton as NoteDetailPresenter;

  @override
  Controller get controller => Controller.of<NoteDetailView>();

  @override
  NoteDetailPresenter initialState() => this;

  var id = '';

  final reading = NoteReadingUseCase();

  void navigate(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NoteDetailView()),
      );
}
