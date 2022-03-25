import 'package:flutter/material.dart';

class BorderedView extends StatelessWidget {
  final Widget? child;

  const BorderedView({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).dividerColor,
          width: 4,
        ),
        borderRadius: BorderRadius.circular(0.0),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Material(
        clipBehavior: Clip.antiAlias,
        color: Colors.transparent,
        child: child,
      ),
    );
  }
}
