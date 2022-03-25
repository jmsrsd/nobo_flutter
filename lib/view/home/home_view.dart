import 'package:flutter/material.dart';

import 'home_presenter.dart';
import 'home_view_actions.dart';
import 'home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = HomePresenter();

    return StreamBuilder(
      stream: presenter.controller.update.stream,
      builder: (context, snapshot) {
        return Scaffold(
          extendBody: true,
          appBar: AppBar(
            title: const Text('Nobo'),
            actions: const [HomeViewActions()],
          ),
          bottomNavigationBar: const BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: SizedBox(height: kToolbarHeight),
          ),
          body: const HomeViewBody(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: presenter.onFloatingActionButtonPressed,
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
