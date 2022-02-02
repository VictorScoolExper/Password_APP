import 'package:flutter/material.dart';
import 'package:pssword_app/pkg/presentation/display/widget_tree.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pssword_app/pkg/presentation/pages/home/providers/floatingBtn_index_Provider.dart';



void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //navigation 2.0
        home: Navigator(
          pages: [
            MaterialPage(child: WidgetTree()),

          ],
          onPopPage: (route, result) {
            //here we reset the index
            ref.read(indexProvider.state).state = 0;
            return route.didPop(result);
          },
        ));
  }
}
