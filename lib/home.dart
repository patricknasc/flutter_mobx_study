import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_study/models/body.dart';

import 'controller.dart';

class HomePage extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<Controller>();
    return Scaffold(appBar: AppBar(
      title: Observer(
        builder: (_) {
          return Text(controller.isValid ? 'Valid Form' : 'Invalid Form');
        },
      ),
    ), body: Observer(
      builder: (_) {
        return BodyWidget(controller: controller);
      },
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
