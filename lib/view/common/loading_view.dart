import 'package:flutter/material.dart';

import '../../common/update.dart';

class LoadingView extends StatelessWidget {
  final Update update;
  final AlignmentGeometry alignment;
  final Color color;
  final Widget progressIndicator;

  const LoadingView({
    Key? key,
    required this.update,
    required this.progressIndicator,
    this.alignment = Alignment.center,
    this.color = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: update.stream,
      builder: (context, snapshot) {
        return Scaffold(
          backgroundColor: color,
          body: Container(
            alignment: Alignment.topCenter,
            color: Colors.transparent,
            child: update.loading ? progressIndicator : const SizedBox(),
          ),
        );
      },
    );
  }
}
