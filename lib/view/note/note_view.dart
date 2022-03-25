import 'package:flutter/material.dart';

import '../common/bordered_view.dart';
import 'note_presenter.dart';

class NoteView extends StatelessWidget {
  final String id;
  final String title;

  const NoteView({
    Key? key,
    required this.id,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BorderedView(
          child: ListTile(
            onTap: () => NotePresenter().onTap(context, id: id),
            leading: const Icon(Icons.edit),
            title: const Text('EDIT'),
            trailing: IconButton(
              onPressed: () => NotePresenter().deleting.execute(id: id),
              icon: const Icon(Icons.delete_forever),
            ),
          ),
        ),
        ListTile(
          minVerticalPadding: 32.0,
          title: SelectableText(
            title.isEmpty ? '...' : title,
            style: TextStyle(
              color: title.isEmpty ? Theme.of(context).hintColor : null,
            ),
          ),
        ),
        Icon(
          Icons.more_horiz_outlined,
          color: Theme.of(context).dividerColor,
        ),
      ],
    );
  }
}
