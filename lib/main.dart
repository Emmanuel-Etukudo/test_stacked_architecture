
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_stacked_architecture/app/app.locator.dart';
import 'package:test_stacked_architecture/app/app.router.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Archi',
      theme: ThemeData(
        primarySwatch:Colors.deepOrange
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}


