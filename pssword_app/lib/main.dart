import 'package:flutter/material.dart';
import 'package:pssword_app/pkg/presentation/display/widget_tree.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Navigator(
          pages: [
            MaterialPage(child: WidgetTree()),
          ],
          onPopPage: (route, result) {
            return route.didPop(result);
          },
        ));
  }
}
