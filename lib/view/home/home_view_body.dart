import 'package:flutter/material.dart';

import '../common/loading_view.dart';
import '../note/note_presenter.dart';
import '../note/note_view.dart';
import 'home_presenter.dart';
import 'home_view_body_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = HomePresenter();

    final note = NotePresenter();
    note.browsing.execute();

    return Stack(
      alignment: Alignment.center,
      children: [
        StreamBuilder<Map<String, String>>(
          stream: note.browsing.result.stream,
          builder: (context, snapshot) {
            final data = snapshot.data ?? {};
            final entries = data.entries.toList().reversed.toList();

            return HomeViewBodyLayout(
              builder: (context, padding) {
                return RefreshIndicator(
                  onRefresh: presenter.onRefresh,
                  child: ListView.separated(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: padding,
                    itemCount: entries.length,
                    itemBuilder: (context, index) {
                      final entry = entries.elementAt(index);

                      return NoteView(
                        id: entry.key,
                        title: entry.value,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 64.0);
                    },
                  ),
                );
              },
            );
          },
        ),
        IgnorePointer(
          child: LoadingView(
            alignment: Alignment.topCenter,
            update: presenter.controller.update,
            progressIndicator: const LinearProgressIndicator(
              minHeight: 4,
            ),
          ),
        ),
      ],
    );
  }
}
