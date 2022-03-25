import 'package:flutter/material.dart';

import 'note_detail_view_padding.dart';

class NoteDetailViewLayout extends StatelessWidget {
  final Widget Function(BuildContext context, EdgeInsets padding) builder;

  const NoteDetailViewLayout({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return builder(context, NoteDetailViewPadding.from(constraints));
      },
    );
  }
}
