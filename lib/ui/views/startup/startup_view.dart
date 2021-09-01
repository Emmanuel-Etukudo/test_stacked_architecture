import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
        viewModelBuilder: () => StartupViewModel(),
        builder: (context, model, child) => Scaffold(
              body: Center(
                child: ElevatedButton(
                  onPressed: () => model.goToHome(),
                  child: Text(model.text),
                ),
              ),
            ));
  }
}
