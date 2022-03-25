import 'package:flutter/material.dart';

import 'home_view_body_padding.dart';

class HomeViewBodyLayout extends StatelessWidget {
  final Widget Function(BuildContext context, EdgeInsets padding) builder;

  const HomeViewBodyLayout({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return builder(context, HomeViewBodyPadding.from(constraints));
      },
    );
  }
}
