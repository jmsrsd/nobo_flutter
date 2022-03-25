import 'package:flutter/material.dart';

import '../../common/bordered_view.dart';
import '../note_presenter.dart';
import 'note_detail_presenter.dart';
import 'note_detail_view_layout.dart';

class NoteDetailView extends StatelessWidget {
  const NoteDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = NoteDetailPresenter();
    final controller = TextEditingController();
    controller.text = presenter.reading.result.valueOrNull ?? '';

    return StreamBuilder(
      stream: presenter.controller.update.stream,
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Nobo'),
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: NoteDetailViewLayout(
              builder: (context, padding) {
                return SingleChildScrollView(
                  padding: padding,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BorderedView(
                        child: ListTile(
                          leading: IconButton(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close),
                          ),
                          trailing: IconButton(
                            onPressed: () async {
                              await NotePresenter().deleting.execute(
                                    id: presenter.id,
                                  );

                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.delete_forever),
                          ),
                        ),
                      ),
                      TextField(
                        controller: controller,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: '...',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 32.0,
                          ),
                        ),
                        maxLines: null,
                        onChanged: (value) async {
                          await NotePresenter().editing.execute(
                                id: presenter.id,
                                data: value,
                              );
                        },
                      ),
                      Icon(
                        Icons.more_horiz_outlined,
                        color: Theme.of(context).dividerColor,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
