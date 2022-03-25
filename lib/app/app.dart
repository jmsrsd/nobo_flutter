import 'package:flutter/material.dart';

import '../view/home/home_view.dart';
import 'app_presenter.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = AppPresenter();
    presenter.reading.execute();

    return StreamBuilder(
      stream: presenter.controller.update.stream,
      builder: (context, snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nobo',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode:
              presenter.state.darkMode ? ThemeMode.dark : ThemeMode.light,
          home: const HomeView(),
        );
      },
    );
  }
}
