import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pssword_app/pkg/presentation/display/widget_tree.dart';
import 'package:pssword_app/pkg/presentation/pages/home/providers/indexProvider.dart';
import 'package:pssword_app/pkg/presentation/pages/password/add_password/add_password.dart';
import 'package:pssword_app/pkg/presentation/pages/setting/settings.dart';
import 'package:pssword_app/pkg/presentation/display/widget_tree.dart';
import 'package:pssword_app/pkg/presentation/pages/home/menu-phone.dart';


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
            //MaterialPage(child: MenuPhoneScrn()),
            //MaterialPage(child: SettingsPage()),
            //MaterialPage(child: AddPassword()),
          ],
          onPopPage: (route, result) {
            final page = route.settings as MaterialPage;
            //if(page.key == )
            //here we reset the index
            ref.read(indexProvider.state).state = 0;
            return route.didPop(result);
          },
        ));
  }
}