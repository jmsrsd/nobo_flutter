import 'package:flutter/material.dart';

import '../../app/app_presenter.dart';

class HomeViewActions extends StatelessWidget {
  const HomeViewActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      child: Row(
        children: [
          IconButton(
            onPressed: AppPresenter().switchDarkMode,
            icon: const Icon(Icons.brightness_4),
          ),
        ].map((e) {
          return Container(
            margin: const EdgeInsets.only(right: 8.0),
            child: e,
          );
        }).toList(),
      ),
    );
  }
}
