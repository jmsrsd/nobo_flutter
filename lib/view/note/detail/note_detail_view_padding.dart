import 'dart:math';

import 'package:flutter/material.dart';

class NoteDetailViewPadding {
  NoteDetailViewPadding._();

  static EdgeInsets from(BoxConstraints constraints) {
    var horizontal = 0.0;
    horizontal = constraints.maxWidth - min(constraints.maxWidth, 720.0);
    horizontal = horizontal / 2.0;
    horizontal = horizontal + 16.0;

    return EdgeInsets.symmetric(
      horizontal: horizontal,
    ).copyWith(
      top: 16.0,
      bottom: kToolbarHeight + 64,
    );
  }
}
